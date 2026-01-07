import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ui/home_screen.dart'; // HomeScreen import 확인

void main() {
  runApp(
    // 1. 최상위: Riverpod 상태 관리자
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. 그 다음: MaterialApp (필수! 여기서 Directionality 제공)
    return MaterialApp(
      title: 'Arknights Web',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      // 3. 마지막: 실제 화면 (Scaffold는 여기 안에 있어야 함)
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}