import 'package:arknight_fe/provider/operator_provider.dart';
import 'package:arknight_fe/ui/operator_stat_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../data/models/operator_model.dart';


class OperatorDetailScreen extends ConsumerWidget {
  final String operatorName;
  const OperatorDetailScreen({super.key, required this.operatorName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(operatorDetailProvider(operatorName));

    return Scaffold(
      appBar: AppBar(title: Text(operatorName)),
      body: detailAsync.when(
        data: (data) => _buildDetailBody(context, data), // 데이터 로드 완료
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('에러 발생: $err')),
      ),
    );
  }
  Widget _buildDetailHeader(OperatorDetailModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(width: 4, height: 24, color: const Color(0xFFFFCF00)), // 데코레이션 바
            const SizedBox(width: 8),
            const Text('OPERATOR PROFILE', style: TextStyle(
              color: Color(0xFFFFCF00), fontSize: 12, letterSpacing: 4)),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          data.name.toUpperCase(),
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, height: 1.0),
        ),
        Row(
          children: [
            Text(data.profession.toUpperCase(), style: const TextStyle(color: Colors.grey)),
            const SizedBox(width: 12),
            // 바코드 느낌의 디자인 요소 추가
            Text('||||||||||||||||||||||||||', style: TextStyle(color: Colors.white.withOpacity(0.1))),
          ],
        ),
      ],
    );
  }
  
  Widget _buildDetailBody(BuildContext context, OperatorDetailModel data) {
    // 화면 너비에 따라 레이아웃 조정 (예: 600px 이상이면 Two-Pane)
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return isLargeScreen
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 왼쪽: 스킨 갤러리 (전체 너비의 1/2)
              Expanded(
                flex: 1,
                child: _buildSkinGallery(data.skins),
              ),
              // 오른쪽: 스탯, 스킬, 모듈 탭 (전체 너비의 1/2)
              Expanded(
                flex: 1,
                child: _buildInfoTabs(data),
              ),
            ],
          )
        : SingleChildScrollView(
            child: Column(
              children: [
                // 작은 화면에서는 스킨 갤러리가 위로
                _buildSkinGallery(data.skins),
                // 정보 탭이 아래로
                _buildInfoTabs(data),
              ],
            ),
          );
  }

  // --- 왼쪽: 스킨 갤러리 ---
  Widget _buildSkinGallery(List<SkinModel> skins) {
    if (skins.isEmpty) {
      return Container(
        alignment: Alignment.center,
        height: 300,
        child: const Text('No skins available'),
      );
    }
    return PageView.builder(
      itemCount: skins.length,
      itemBuilder: (context, index) {
        final skin = skins[index];
        return Column(
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: skin.portraitUrl ?? skin.avatarUrl ?? '',
                fit: BoxFit.contain,
                errorWidget: (context, url, error) => const Icon(Icons.broken_image, size: 100),
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              ),
            ),
            if (skin.name.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  skin.name,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        );
      },
    );
  }

  // --- 오른쪽: 정보 탭 (스탯, 스킬, 모듈) ---
  Widget _buildInfoTabs(OperatorDetailModel data) {
    // 소비 재료를 타입별로 분류
    final evolveConsumptions = data.consumptions.where((c) => c.type == 'EVOLVE').toList();
    final skillConsumptions = data.consumptions.where((c) => c.type.startsWith('SKILL')).toList();
    final moduleConsumptions = data.consumptions.where((c) => c.type == 'MODULE').toList();

    return DefaultTabController(
      length: 3, // 스탯, 스킬, 모듈 탭
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Stats'),
              Tab(text: 'Skills'),
              Tab(text: 'Modules'),
            ],
            indicatorColor: Color(0xFFFFCF00),
            indicatorWeight: 3,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
            unselectedLabelColor: Colors.grey,
          ),
          Expanded(
            child: TabBarView(
              children: [
                // 1. Stats 탭
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailHeader(data),
                      const SizedBox(height: 24),
                      OperatorStatModule(phases: data.phases, rarityString: data.rarity),
                      Text(
                        data.description.replaceAll(RegExp(r'<@ba.kw>(.*?)</>'), r'**\1**'), // @ba.kw 태그 간단 처리
                        style: const TextStyle(fontSize: 14),
                      ),
                      const Divider(height: 32),
                      _buildConsumptionSection('Elite Consumptions', evolveConsumptions),
                    ],
                  ),
                ),
                // 2. Skills 탭
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${data.name} Skill & Mastery Consumptions', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      _buildConsumptionSection('Skill Levels', skillConsumptions),
                    ],
                  ),
                ),
                // 3. Modules 탭
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${data.name} Module Consumptions', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      _buildConsumptionSection('Module Upgrades', moduleConsumptions),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- 재료 목록 섹션 (아이템 아이콘 적용) ---
  Widget _buildConsumptionSection(String title, List<ConsumptionModel> consumptions) {
    if (consumptions.isEmpty) return const SizedBox.shrink();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(title.toUpperCase(), style: const TextStyle(
            color: Color(0xFFFFCF00), letterSpacing: 1.5, fontWeight: FontWeight.bold)),
        ),
        Wrap(
          spacing: 12, // 가로 간격
          runSpacing: 12, // 세로 간격
          children: consumptions.map((item) => Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  // 재료 아이콘 베이스 (게임의 사각형 프레임)
                  Container(
                    width: 60, height: 60,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2A2A2A),
                      border: Border.all(color: Colors.white12),
                    ),
                    child: CachedNetworkImage(imageUrl: item.iconUrl),
                  ),
                  // 수량 표시 (우측 하단 오버레이)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    color: Colors.black87,
                    child: Text('x${item.count}', style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              // 아이템 이름 (최대 6자 제한 등)
              SizedBox(
                width: 60,
                child: Text(item.itemName, textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ],
          )).toList(),
        ),
      ],
    );
  }
}