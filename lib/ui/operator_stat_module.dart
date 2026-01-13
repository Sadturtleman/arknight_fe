import 'package:arknight_fe/data/models/operator_model.dart';
import 'package:arknight_fe/data/module/operator_cost_calculator.dart';
import 'package:arknight_fe/provider/cost_provider.dart'; // resourceCalculatorProvider 정의 파일
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class OperatorStatModule extends ConsumerStatefulWidget {
  final List<PhaseModel> phases;
  final int rarity;

  const OperatorStatModule({
    super.key,
    required this.phases,
    required this.rarity,
  });

  @override
  ConsumerState<OperatorStatModule> createState() => _OperatorStatModuleState();
}

class _OperatorStatModuleState extends ConsumerState<OperatorStatModule> {
  int _selectedPhaseIndex = 0;
  double _currentLevel = 1;

  // 스탯 선형 보간 계산
  int _calculateStat(int minVal, int maxVal, int minLvl, int maxLvl) {
    if (maxLvl == minLvl) return maxVal;
    double ratio = (_currentLevel - minLvl) / (maxLvl - minLvl);
    return (minVal + (maxVal - minVal) * ratio).round();
  }

  @override
  Widget build(BuildContext context) {
    final calcAsync = ref.watch(resourceCalculatorProvider);
    final currentPhase = widget.phases[_selectedPhaseIndex];
    final minAttr = currentPhase.attributes.first;
    final maxAttr = currentPhase.attributes.last;

    final currentHp = _calculateStat(minAttr.maxHp, maxAttr.maxHp, minAttr.level, maxAttr.level);
    final currentAtk = _calculateStat(minAttr.atk, maxAttr.atk, minAttr.level, maxAttr.level);
    final currentDef = _calculateStat(minAttr.def, maxAttr.def, minAttr.level, maxAttr.level);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. 정예화 단계 선택 (Elite 0, 1, 2)
        Row(
          children: List.generate(widget.phases.length, (index) => Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Text('ELITE $index'),
              selected: _selectedPhaseIndex == index,
              onSelected: (val) {
                if (val) {
                  setState(() {
                    _selectedPhaseIndex = index;
                    _currentLevel = widget.phases[index].attributes.first.level.toDouble();
                  });
                }
              },
              selectedColor: const Color(0xFFFFCF00),
              labelStyle: TextStyle(
                color: _selectedPhaseIndex == index ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
        ),
        const SizedBox(height: 16),

        // 2. 레벨 슬라이더
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              const Text('LVL', style: TextStyle(color: Color(0xFFFFCF00), fontWeight: FontWeight.bold)),
              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: const Color(0xFFFFCF00),
                    thumbColor: const Color(0xFFFFCF00),
                  ),
                  child: Slider(
                    value: _currentLevel,
                    min: minAttr.level.toDouble(),
                    max: maxAttr.level.toDouble(),
                    divisions: (maxAttr.level - minAttr.level).toInt() == 0 ? 1 : (maxAttr.level - minAttr.level).toInt(),
                    onChanged: (val) => setState(() => _currentLevel = val),
                  ),
                ),
              ),
              Text('${_currentLevel.round()}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // 3. 해당 정예화 단계 내 리소스 계산 패널
        calcAsync.when(
          data: (calculator) {
            // 수정된 로직: 현재 선택된 정예화 단계(_selectedPhaseIndex) 내에서의 비용만 계산
            final result = calculator.calculate(
              widget.rarity,
              _selectedPhaseIndex, 1, // 현재 단계의 1레벨부터 시작
              _selectedPhaseIndex, _currentLevel.round(), // 현재 슬라이더 위치까지
            );
            return _buildResourcePanel(result, _selectedPhaseIndex);
          },
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text('Data Error: $e'),
        ),
        const SizedBox(height: 24),

        // 4. 스탯 그리드
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          childAspectRatio: 2.2,
          children: [
            _buildStatItem('HP', currentHp),
            _buildStatItem('ATK', currentAtk),
            _buildStatItem('DEF', currentDef),
            _buildStatItem('COST', maxAttr.cost),
            _buildStatItem('RES', maxAttr.magicResistance.toInt()),
            _buildStatItem('BLOCK', maxAttr.blockCnt),
          ],
        ),
      ],
    );
  }

  Widget _buildResourcePanel(CalcResult result, int phase) {
    final formatter = NumberFormat('#,###');
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF1A1A1A),
        border: Border(left: BorderSide(color: Color(0xFFFFCF00), width: 4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PHASE $phase INVESTMENT (Lv.1 -> Lv.${_currentLevel.round()})",
            style: const TextStyle(color: Color(0xFFFFCF00), fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _resourceInfoItem("EXP", formatter.format(result.exp), "pt"),
              const SizedBox(width: 24),
              _resourceInfoItem("LMD", formatter.format(result.lmd), "G"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _resourceInfoItem(String label, String value, String unit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 10)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(width: 4),
            Text(unit, style: const TextStyle(color: Color(0xFFFFCF00), fontSize: 10)),
          ],
        ),
      ],
    );
  }

  Widget _buildStatItem(String label, int value) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: const BoxDecoration(
        color: Color(0xFF2A2A2A),
        border: Border(left: BorderSide(color: Colors.white24, width: 2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold)),
          Text('$value', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }
}