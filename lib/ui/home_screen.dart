import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../provider/operator_provider.dart';

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
    // 화면이 처음 로드될 때 첫 페이지 가져오기
    Future.microtask(() {
      ref.read(operatorPaginationProvider.notifier).loadInitialPage();
    });

    // 스크롤 이벤트로 무한 스크롤 구현
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.9) {
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
            onPressed: () {
              ref.read(operatorPaginationProvider.notifier).refresh();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 페이지 정보 표시
          if (state.operators.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Page ${state.currentPage} | Total: ${state.operators.length} operators',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          
          // 오퍼레이터 그리드
          Expanded(
            child: _buildContent(state),
          ),
          
          // 페이지 네비게이션 버튼
          _buildPaginationControls(state),
        ],
      ),
    );
  }

  Widget _buildContent(PaginationState state) {
    // 에러 상태
    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: ${state.error}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(operatorPaginationProvider.notifier).refresh();
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    // 첫 로딩 상태
    if (state.isLoading && state.operators.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    // 데이터 표시
    return GridView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: state.operators.length + (state.isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        // 로딩 인디케이터 (무한 스크롤 중)
        if (index == state.operators.length) {
          return const Center(child: CircularProgressIndicator());
        }

        final op = state.operators[index];
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: op.skins.isNotEmpty && op.skins.first.portraitUrl != null
                      ? CachedNetworkImage(
                          imageUrl: op.skins.first.portraitUrl!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.broken_image,
                            size: 50,
                          ),
                        )
                      : const Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.grey,
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      op.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      op.profession,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPaginationControls(PaginationState state) {
    if (state.operators.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 이전 페이지 버튼
          ElevatedButton.icon(
            onPressed: state.currentPage > 1 && !state.isLoading
                ? () {
                    ref.read(operatorPaginationProvider.notifier)
                        .loadPage(state.currentPage - 1);
                  }
                : null,
            icon: const Icon(Icons.arrow_back),
            label: const Text('Previous'),
          ),
          
          const SizedBox(width: 16),
          
          // 페이지 번호 입력
          SizedBox(
            width: 100,
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Page ${state.currentPage}',
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              ),
              onSubmitted: (value) {
                final page = int.tryParse(value);
                if (page != null && page > 0) {
                  ref.read(operatorPaginationProvider.notifier).loadPage(page);
                }
              },
            ),
          ),
          
          const SizedBox(width: 16),
          
          // 다음 페이지 버튼
          ElevatedButton.icon(
            onPressed: state.hasMore && !state.isLoading
                ? () {
                    ref.read(operatorPaginationProvider.notifier)
                        .loadPage(state.currentPage + 1);
                  }
                : null,
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Next'),
          ),
        ],
      ),
    );
  }
}