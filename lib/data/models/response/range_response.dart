import 'package:freezed_annotation/freezed_annotation.dart';

part 'range_response.freezed.dart';
part 'range_response.g.dart';

@freezed
abstract class RangeResponse  with _$RangeResponse{
  const factory RangeResponse({
    required String rangeId,
    required List<GridResponse> grids
  }) = _RangeResponse;

  factory RangeResponse.fromJson(Map<String, dynamic> json) => 
    _$RangeResponseFromJson(json);
}

@freezed
abstract class GridResponse with _$GridResponse{
  const factory GridResponse({
    required int row,
    required int col
  }) = _GridResponse;

  factory GridResponse.fromJson(Map<String, dynamic> json) => 
    _$GridResponseFromJson(json);
}