import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../provider/operator_provider.dart';
import '../data/models/operator_model.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // 무한 스크롤: 90% 지점 도달 시 다음 데이터 로드
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent * 0.9) {
        ref.read(operatorPaginationProvider.notifier).loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(operatorPaginationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ARKNIGHTS TERMINAL'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.read(operatorPaginationProvider.notifier).refresh(),
          ),
        ],
      ),
      body: Column(
        children: [
          // 1. 전술 필터 바
          _buildFilterBar(state),
          
          // 2. 메인 그리드 콘텐츠 (무한 스크롤 적용)
          Expanded(
            child: _buildContent(state),
          ),
          
          // [수정] 무한 스크롤이므로 하단 페이지 컨트롤러(네비게이션 바) 제거
        ],
      ),
    );
  }

  // 필터 바 디자인 유지
  Widget _buildFilterBar(PaginationState state) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildTacticalFilter('ALL', state.selectedRarity == null, () => 
            ref.read(operatorPaginationProvider.notifier).setSelectedRarity(null)),
          ...[6, 5, 4, 3, 2, 1].map((star) => 
            _buildTacticalFilter('$star★', state.selectedRarity == star, () =>
              ref.read(operatorPaginationProvider.notifier).setSelectedRarity(star))),
        ],
      ),
    );
  }

  Widget _buildTacticalFilter(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFFCF00) : Colors.transparent,
          border: Border.all(color: isSelected ? const Color(0xFFFFCF00) : Colors.white24),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(PaginationState state) {
    // 반응형 그리드 개수 계산
    final double width = MediaQuery.of(context).size.width;
    int crossAxisCount = 2; // 모바일
    if (width > 1200) {crossAxisCount = 5;}
    else if (width > 800) {crossAxisCount = 4;}
    else if (width > 600) {crossAxisCount = 3;}

    if (state.error != null) {
      return Center(child: Text('Error: ${state.error}'));
    }

    if (state.isLoading && state.operators.isEmpty) {
      return GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => const ShimmerLoadingCard(),
      );
    }

    return GridView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: state.operators.length,
      itemBuilder: (context, index) {
        return _OperatorCard(op: state.operators[index]);
      },
    );
  }
}

class _OperatorCard extends StatelessWidget {
  final OperatorModel op;
  const _OperatorCard({required this.op});

  @override
  Widget build(BuildContext context) {
    // rarity 문자열에서 숫자 추출 (예: "TIER_6" -> 6)

    return InkWell(
      onTap: () => context.pushNamed('detail', pathParameters: {'name': op.name}),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          border: Border(
            left: BorderSide(color: _getRarityColor(op.rarity), width: 4),
          ),
        ),
        child: Stack(
          children: [
            // [추가] 고성능 오퍼레이터(5~6성) 배경 애니메이션 효과
            Positioned.fill(
              child: RarityBackground(rarity: op.rarity),
            ),
            
            // 오퍼레이터 이미지
            Positioned.fill(
              child: ShaderMask(
                shaderCallback: (rect) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                ).createShader(rect),
                blendMode: BlendMode.dstIn,
                child: CachedNetworkImage(
                  imageUrl: op.skins.isNotEmpty ? (op.skins.first.portraitUrl ?? '') : '',
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const Icon(Icons.person, color: Colors.white10),
                ),
              ),
            ),
            
            // 하단 정보 (이름 및 직업)
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      op.name.toUpperCase(),
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      color: const Color(0xFFFFCF00),
                      child: Text(
                        op.profession,
                        style: const TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getRarityColor(int rarity) {
    if (rarity == 6) return const Color(0xFFFF7F27);
    if (rarity == 5) return const Color(0xFFFDE910);
    return Colors.white24;
  }
}

// 펄스 애니메이션 배경 위젯
class RarityBackground extends StatefulWidget {
  final int rarity;
  const RarityBackground({super.key, required this.rarity});

  @override
  State<RarityBackground> createState() => _RarityBackgroundState();
}

class _RarityBackgroundState extends State<RarityBackground> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.rarity < 5) return const SizedBox.shrink();

    final color = widget.rarity == 6 ? const Color(0xFFFF7F27) : const Color(0xFFFDE910);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(-0.5, -0.8),
              radius: 1.5,
              colors: [
                color.withOpacity(0.12 * _controller.value),
                Colors.transparent,
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// 로딩용 스켈레톤 위젯 (Shimmer)
class ShimmerLoadingCard extends StatelessWidget {
  const ShimmerLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[900]!,
      highlightColor: Colors.grey[800]!,
      child: Container(
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
        child: Column(
          children: [
            const Expanded(child: SizedBox.expand()),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 100, height: 16, color: Colors.white),
                  const SizedBox(height: 8),
                  Container(width: 50, height: 10, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}