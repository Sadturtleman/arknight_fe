import 'package:arknight_fe/ui/home_screen.dart';
import 'package:arknight_fe/ui/operatordetail_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      // 홈 화면
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          // 상세 화면 (하위 경로로 설정: /르무엔)
          // 이름에 특수문자나 공백이 있을 수 있으므로 path parameter 사용
          GoRoute(
            path: ':name',
            name: 'detail',
            builder: (context, state) {
              final name = state.pathParameters['name']!;
              return OperatorDetailScreen(operatorName: name);
            },
          ),
        ],
      ),
    ],
  );
});