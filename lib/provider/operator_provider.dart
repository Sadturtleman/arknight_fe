import 'dart:async';
import 'package:arknight_fe/data/model/operator_model.dart';
import 'package:arknight_fe/data/models/requests/operator_request.dart';
import 'package:arknight_fe/data/repository/operator_repo.dart';
import 'package:arknight_fe/data/state/pagination_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'operator_provider.g.dart';

@riverpod
class OperatorList extends _$OperatorList {
  static const int _limit = 20;

  @override
  Future<PaginationState> build(OperatorListRequest request) async {
    // 1. 캐싱 유지
    final link = ref.keepAlive();
    // (선택사항) 60초 뒤에는 캐시를 날리고 싶다면 타이머 추가 가능

    // [Fix] Named Argument 호출로 수정
    return _fetchPage(request: request, skip: 0);
  }

  // 내부 Helper 함수
  Future<PaginationState> _fetchPage({
    required OperatorListRequest request,
    required int skip,
    List<OperatorModel>? currentList,
  }) async {
    final repository = ref.read(operatorRepositoryProvider);

    final paginatedRequest = request.copyWith(
      skip: skip,
      limit: _limit,
    );

    // API 호출
    final newItems = await repository.getOperators(paginatedRequest);

    final hasMore = newItems.length >= _limit;
    
    final totalList = [...?currentList, ...newItems];

    return PaginationState(
      operators: totalList,
      nextSkip: skip + newItems.length,
      hasMore: hasMore,
      isLoadingMore: false,
    );
  }

  // UI에서 호출하는 다음 페이지 로드 함수
  Future<void> fetchNext() async {
    final currentState = state.value;

    // 방어 로직: 데이터가 없거나, 이미 로딩 중이거나, 끝 페이지면 중단
    if (currentState == null || currentState.isLoadingMore || !currentState.hasMore) {
      return;
    }

    // 1. UI에 '로딩 중' 표시 (기존 데이터 유지)
    state = AsyncValue.data(currentState.copyWith(isLoadingMore: true));

    state = await AsyncValue.guard(() async {
      return _fetchPage(
        request: request, 
        skip: currentState.nextSkip, 
        currentList: currentState.operators,
      );
    });
  }
}