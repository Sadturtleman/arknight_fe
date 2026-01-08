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
    // 스크롤 이벤트로 무한 스크롤 구현 (90% 지점 도달 시 다음 페이지)
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
        title: const Text('Arknights DB'),
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
          // 1. 등급 필터 섹션 (Horizontal Scroll)
          _buildFilterBar(state),

          // 2. 현재 상태 정보 표시
          if (state.operators.isNotEmpty) _buildInfoBar(state),

          // 3. 메인 콘텐츠 (그리드)
          Expanded(
            child: _buildContent(state),
          ),

          // 4. 하단 페이지 컨트롤
          _buildPaginationControls(state),
        ],
      ),
    );
  }

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

  Widget _buildInfoBar(PaginationState state) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Page ${state.currentPage} | Filter: ${state.selectedRarity?.toString() ?? "All"} | Total: ${state.operators.length}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(PaginationState state) {
    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: ${state.error}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(operatorPaginationProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (state.isLoading && state.operators.isEmpty) {
      return GridView.builder(
        itemBuilder: (context, index) => ShimmerLoadingCard(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        
      );
    }

    if (state.operators.isEmpty) {
      return const Center(child: Text('No operators found.'));
    }

    return GridView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      cacheExtent: 1000,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 가독성을 위해 개수를 줄이고 카드를 키움
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: state.operators.length,
      itemBuilder: (context, index) {
        return RepaintBoundary(
          child: _OperatorCard(op: state.operators[index]),
        );
      },
    );
  }

  Widget _buildPaginationControls(PaginationState state) {
    if (state.operators.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Colors.grey[300]!))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, size: 18),
            onPressed: state.currentPage > 1 && !state.isLoading
                ? () => ref.read(operatorPaginationProvider.notifier).loadPage(state.currentPage - 1)
                : null,
          ),
          Text('Page ${state.currentPage}', style: const TextStyle(fontWeight: FontWeight.bold)),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios, size: 18),
            onPressed: state.hasMore && !state.isLoading
                ? () => ref.read(operatorPaginationProvider.notifier).loadPage(state.currentPage + 1)
                : null,
          ),
        ],
      ),
    );
  }
}

class _OperatorCard extends StatelessWidget {
  final OperatorModel op;
  const _OperatorCard({required this.op});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed('detail', pathParameters: {'name': op.name}),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          border: Border(
            left: BorderSide(color: _getRarityColor(op.rarity), width: 4),
          ),
        ),
        child: Stack(
          children: [
            // 배경 오퍼레이터 이미지 (Portrait)
            Positioned.fill(
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                  ).createShader(rect);
                },
                blendMode: BlendMode.dstIn,
                child: CachedNetworkImage(
                  imageUrl: op.skins.first.portraitUrl ?? '',
                  fit: BoxFit.cover,
                  memCacheHeight: 400,
                  memCacheWidth: 300,
                  placeholder: (context, url) => Container(color: Colors.grey[800]),
                  errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red)
                ),
              ),
            ),
            // 하단 정보 레이어
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
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
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

  Color _getRarityColor(String rarity) {
    if (rarity.contains('6')) return const Color(0xFFFF7F27); // 6성: 오렌지
    if (rarity.contains('5')) return const Color(0xFFFDE910); // 5성: 옐로우
    return Colors.white24;
  }
}

// _OperatorCard 내부에 추가할 배경 애니메이션 위젯
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
    )..repeat(reverse: true); // 펄스 효과를 위해 반복
  }

  @override
  Widget build(BuildContext context) {
    if (widget.rarity < 5) return const SizedBox.shrink(); // 5성 미만은 이펙트 제외

    final color = widget.rarity == 6 ? const Color(0xFFFF7F27) : const Color(0xFFFDE910);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(-0.5, -0.5),
              radius: 1.5,
              colors: [
                color.withOpacity(0.15 * _controller.value), // 농도 변화
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

class ShimmerLoadingCard extends StatelessWidget {
  const ShimmerLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[900]!, // 어두운 배경색
      highlightColor: Colors.grey[800]!, // 빛나는 하이라이트색
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black, // Shimmer 자식은 배경색이 있어야 함
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(child: SizedBox.expand()), // 이미지 자리
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 80, height: 18, color: Colors.white), // 이름 자리
                  const SizedBox(height: 8),
                  Container(width: 40, height: 12, color: Colors.white), // 직업 자리
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}