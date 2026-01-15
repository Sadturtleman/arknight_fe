import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:arknight_fe/data/model/operator_model.dart';

part 'pagination_state.freezed.dart';

@freezed
abstract class PaginationState with _$PaginationState {
  const factory PaginationState({
    @Default([]) List<OperatorModel> operators, // 누적된 데이터
    @Default(0) int nextSkip,                   // 다음에 불러올 offset
    @Default(true) bool hasMore,                // 더 불러올 데이터가 남았는지
    @Default(false) bool isLoadingMore,         // 스크롤 바닥에 닿아서 로딩 중인지
  }) = _PaginationState;
}