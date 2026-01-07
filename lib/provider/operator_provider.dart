import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/operator_model.dart';
import '../data/repository/operator_repository.dart';

// 페이지네이션 상태를 관리하는 클래스
class PaginationState {
  final List<OperatorModel> operators;
  final int currentPage;
  final bool isLoading;
  final bool hasMore;
  final String? error;

  PaginationState({
    required this.operators,
    required this.currentPage,
    required this.isLoading,
    required this.hasMore,
    this.error,
  });

  PaginationState copyWith({
    List<OperatorModel>? operators,
    int? currentPage,
    bool? isLoading,
    bool? hasMore,
    String? error,
  }) {
    return PaginationState(
      operators: operators ?? this.operators,
      currentPage: currentPage ?? this.currentPage,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      error: error ?? this.error,
    );
  }

  factory PaginationState.initial() {
    return PaginationState(
      operators: [],
      currentPage: 0,
      isLoading: false,
      hasMore: true,
      error: null,
    );
  }
}

// 최신 Riverpod의 Notifier 사용
class OperatorPaginationNotifier extends Notifier<PaginationState> {
  static const int pageSize = 50;

  @override
  PaginationState build() {
    // 초기화 시 첫 페이지 자동 로드
    loadInitialPage();
    return PaginationState.initial();
  }

  OperatorRepository get repository => ref.read(operatorRepositoryProvider);

  // 첫 페이지 로드
  Future<void> loadInitialPage() async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final operators = await repository.getOperators(skip: 0, limit: pageSize);
      state = state.copyWith(
        operators: operators,
        currentPage: 1,
        isLoading: false,
        hasMore: operators.length == pageSize,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  // 다음 페이지 로드 (무한 스크롤용)
  Future<void> loadNextPage() async {
    if (state.isLoading || !state.hasMore) return;

    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final skip = state.currentPage * pageSize;
      final newOperators = await repository.getOperators(skip: skip, limit: pageSize);
      
      state = state.copyWith(
        operators: [...state.operators, ...newOperators],
        currentPage: state.currentPage + 1,
        isLoading: false,
        hasMore: newOperators.length == pageSize,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  // 특정 페이지로 이동
  Future<void> loadPage(int page) async {
    if (page < 1 || state.isLoading) return;

    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final skip = (page - 1) * pageSize;
      final operators = await repository.getOperators(skip: skip, limit: pageSize);
      
      state = state.copyWith(
        operators: operators,
        currentPage: page,
        isLoading: false,
        hasMore: operators.length == pageSize,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  // 새로고침
  Future<void> refresh() async {
    state = PaginationState.initial();
    await loadInitialPage();
  }
}

// NotifierProvider 사용 (StateNotifierProvider 대신)
final operatorPaginationProvider = NotifierProvider<OperatorPaginationNotifier, PaginationState>(
  OperatorPaginationNotifier.new,
);