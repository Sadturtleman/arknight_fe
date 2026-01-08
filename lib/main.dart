import 'package:arknight_fe/core/route/router.dart';
import 'package:arknight_fe/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  runApp(
    // 1. 최상위: Riverpod 상태 관리자
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final router = ref.read(routerProvider);

    // 2. 그 다음: MaterialApp (필수! 여기서 Directionality 제공)
    return MaterialApp.router(
      title: 'Arknights Web',
      theme: arknightsTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}