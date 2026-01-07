import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart'; // 이미지 캐싱
import '../provider/operator_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 프로바이더 상태 구독 (AsyncValue 타입으로 리턴됨)
    final asyncOperators = ref.watch(operatorListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arknights DB'),
        centerTitle: true,
      ),
      // .when을 사용해 3가지 상태(데이터 있음, 에러, 로딩)를 깔끔하게 분기 처리
      body: asyncOperators.when(
        data: (operators) => GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, // 웹 화면에 맞게 넓게
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: operators.length,
          itemBuilder: (context, index) {
            final op = operators[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      // 이미지가 있으면 보여주고, 없으면 아이콘
                      child: op.skins.isNotEmpty
                          ? CachedNetworkImage(
                              imageUrl: op.skins.first.portraitUrl!,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Icon(Icons.broken_image),
                            )
                          : const Icon(Icons.person, size: 50, color: Colors.grey),
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
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        error: (err, stack) => Center(child: Text('Error: $err')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}