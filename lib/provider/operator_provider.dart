import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/operator_model.dart';
import '../data/repository/operator_repository.dart';
import 'package:flutter/foundation.dart';

// 페이지네이션 상태를 관리하는 클래스
class PaginationState {
  final List<OperatorModel> operators;
  final int currentPage;
  final bool isLoading;
  final bool hasMore;
  final String? error;
  final int? selectedRarity;

  PaginationState({
    required this.operators,
    required this.currentPage,
    required this.isLoading,
    required this.hasMore,
    this.error,
    this.selectedRarity
  });

  PaginationState copyWith({
    List<OperatorModel>? operators,
    int? currentPage,
    bool? isLoading,
    bool? hasMore,
    String? error,
    int? selectedRarity,
  }) {
    return PaginationState(
      operators: operators ?? this.operators,
      currentPage: currentPage ?? this.currentPage,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      error: error ?? this.error,
      selectedRarity: selectedRarity ?? this.selectedRarity,
    );
  }

  factory PaginationState.initial() {
    return PaginationState(
      operators: [],
      currentPage: 0,
      isLoading: false,
      hasMore: true,
      error: null,
      selectedRarity: 6
    );
  }
}


class OperatorPaginationNotifier extends Notifier<PaginationState> {
  static const int pageSize = 50;

  @override
  PaginationState build() {
    // build 내에서 미래에 실행될 작업을 microtask로 등록하거나 
    // 그냥 초기 상태만 반환하고 UI에서 호출하는 것이 안전합니다.
    Future.microtask(() => loadInitialPage());
    return PaginationState.initial();
  }

  OperatorRepository get repository => ref.read(operatorRepositoryProvider);


  void setSelectedRarity(int? rarity) {
    state = state.copyWith(selectedRarity: rarity);
    refresh(); // 필터 변경 시 초기화 후 다시 로드
  }

  // 첫 페이지 로드
  Future<void> loadInitialPage() async {
    state = state.copyWith(isLoading: true, error: null, operators: []); // 필터 변경 시 목록 비우기
    
    try {
      final operators = await repository.getOperators(
        skip: 0, 
        limit: pageSize,
        rarity: state.selectedRarity, // 서버로 쿼리 전달!
      );
      
      final sortedOperators = await compute(_sortOperatorsInIsolate, operators);
      
      state = state.copyWith(
        operators: sortedOperators,
        currentPage: 1,
        isLoading: false,
        hasMore: sortedOperators.length == pageSize,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  // 다음 페이지 로드 시에도 rarity 전달
  Future<void> loadNextPage() async {
    if (state.isLoading || !state.hasMore) return;
    state = state.copyWith(isLoading: true);
    
    try {
      final skip = state.currentPage * pageSize;
      final newOperators = await repository.getOperators(
        skip: skip, 
        limit: pageSize,
        rarity: state.selectedRarity, // 동일하게 전달
      );
      
      final sortedNewOperators = await compute(_sortOperatorsInIsolate, newOperators);

      state = state.copyWith(
        operators: [...state.operators, ...sortedNewOperators],
        currentPage: state.currentPage + 1,
        isLoading: false,
        hasMore: sortedNewOperators.length == pageSize,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }


  List<OperatorModel> _sortOperatorsInIsolate(List<OperatorModel> list) {
    list.sort((a, b) {
      if (a.rarity != b.rarity) {
        return b.rarity.compareTo(a.rarity); // 내림차순
      }
      return a.name.compareTo(b.name);
    });
    return list;
  }

  Future<void> refresh() async {
    final currentRarity = state.selectedRarity;

    state = PaginationState.initial().copyWith(
      selectedRarity: currentRarity,
    );

    await loadInitialPage();
  }

// 특정 페이지로 이동 (숫자 입력 또는 하단 네비게이션용)
  Future<void> loadPage(int page) async {
    // 1. 유효하지 않은 페이지 번호거나 로딩 중이면 중단
    if (page < 1 || state.isLoading) return;

    // 2. 로딩 상태로 변경 및 기존 데이터 초기화 (특정 페이지 이동은 기존 목록을 대체)
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      // 3. skip 계산 (예: 1페이지는 0, 2페이지는 50개 건너뜀)
      final skip = (page - 1) * pageSize;
      
      // 4. 리포지토리 호출 (현재 선택된 rarity 쿼리 포함)
      final operators = await repository.getOperators(
        skip: skip, 
        limit: pageSize,
        rarity: state.selectedRarity, // Notifier에 정의한 getter 사용
      );
      
      // 5. 받아온 데이터 정렬 (오름차순)
      final sortedOperators = await compute(_sortOperatorsInIsolate, operators);

      // 6. 상태 업데이트
      state = state.copyWith(
        operators: sortedOperators,
        currentPage: page,
        isLoading: false,
        hasMore: sortedOperators.length == pageSize,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }
}

// NotifierProvider 사용 (StateNotifierProvider 대신)
final operatorPaginationProvider = NotifierProvider<OperatorPaginationNotifier, PaginationState>(
  OperatorPaginationNotifier.new,
);

final operatorDetailProvider = FutureProvider.family<OperatorDetailModel, String>((ref, name) {
  return ref.watch(operatorRepositoryProvider).getOperatorDetail(name);
});