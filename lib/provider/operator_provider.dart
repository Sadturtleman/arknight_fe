import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/operator_model.dart';
import '../data/repository/operator_repository.dart';

// UI가 구독할 오퍼레이터 목록 프로바이더
// FutureProvider는 비동기 데이터(로딩/에러/데이터)를 처리해줍니다.
final operatorListProvider = FutureProvider<List<OperatorModel>>((ref) async {
  final repository = ref.watch(operatorRepositoryProvider);
  return repository.getOperators();
});