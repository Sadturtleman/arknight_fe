import 'package:arknight_fe/data/models/operator_model.dart';
import 'package:arknight_fe/data/module/operator_cost_calculator.dart';
import 'package:arknight_fe/provider/cost_provider.dart'; // resourceCalculatorProvider가 정의된 곳
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class OperatorStatModule extends ConsumerStatefulWidget {
  final List<PhaseModel> phases;
  final String rarityString; // "6_star" 또는 "TIER_6" 형식

  const OperatorStatModule({
    super.key,
    required this.phases,
    required this.rarityString,
  });

  @override
  ConsumerState<OperatorStatModule> createState() => _OperatorStatModuleState();
}

class _OperatorStatModuleState extends ConsumerState<OperatorStatModule> {
  int _selectedPhaseIndex = 0;
  double _currentLevel = 1;

  // 성급 추출 (예: "6_star" -> 6)
  int get _rarityInt =>
      int.tryParse(widget.rarityString.replaceAll(RegExp(r'[^0-9]'), '')) ?? 6;

  // 선형 보간 계산 함수 (스탯 성장 공식)
  int _calculateStat(int minVal, int maxVal, int minLvl, int maxLvl) {
    if (maxLvl == minLvl) return maxVal;
    double ratio = (_currentLevel - minLvl) / (maxLvl - minLvl);
    return (minVal + (maxVal - minVal) * ratio).round();
  }

  @override
  Widget build(BuildContext context) {
    // 1. 계산기 데이터 상태 감시
    final calcAsync = ref.watch(resourceCalculatorProvider);
    
    final currentPhase = widget.phases[_selectedPhaseIndex];
    final minAttr = currentPhase.attributes.first;
    final maxAttr = currentPhase.attributes.last;

    // 현재 레벨에 따른 실시간 스탯 계산
    final currentHp = _calculateStat(minAttr.maxHp, maxAttr.maxHp, minAttr.level, maxAttr.level);
    final currentAtk = _calculateStat(minAttr.atk, maxAttr.atk, minAttr.level, maxAttr.level);
    final currentDef = _calculateStat(minAttr.def, maxAttr.def, minAttr.level, maxAttr.level);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --- 1. 정예화 단계 선택 (ELITE CHIPS) ---
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

        // --- 2. 레벨 슬라이더 패널 ---
        Container(
          padding: const EdgeInsets.all(12),
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
                    overlayColor: const Color(0xFFFFCF00).withOpacity(0.2),
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

        // --- 3. 실시간 누적 리소스 계산 패널 (NEW) ---
        calcAsync.when(
          data: (calculator) {
            // E0 L1부터 현재 선택된 지점까지의 누적 비용 계산
            final result = calculator.calculate(
              _rarityInt,
              0, 1, // Start: Elite 0, Level 1
              _selectedPhaseIndex, _currentLevel.round(), // Target: Current Slider
            );
            return _buildResourcePanel(result);
          },
          loading: () => const LinearProgressIndicator(color: Color(0xFFFFCF00), backgroundColor: Colors.white10),
          error: (e, _) => Text('Cost Data Error: $e', style: const TextStyle(color: Colors.red, fontSize: 10)),
        ),
        const SizedBox(height: 24),

        // --- 4. 스탯 디스플레이 그리드 ---
        const Text("UNIT PERFORMANCE DATA", style: TextStyle(color: Colors.grey, fontSize: 10, letterSpacing: 2)),
        const SizedBox(height: 8),
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
            _buildStatItem('RES', maxAttr.magicResistance),
            _buildStatItem('BLOCK', maxAttr.blockCnt),
          ],
        ),
      ],
    );
  }

  // 누적 리소스 레이아웃
  Widget _buildResourcePanel(CalcResult result) {
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
          const Text("TOTAL INVESTMENT REQUIRED", style: TextStyle(color: Color(0xFFFFCF00), fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
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