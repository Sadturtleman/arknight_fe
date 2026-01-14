import 'package:arknight_fe/data/models/response/item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseResponse<T> with _$BaseResponse<T>{
  const factory BaseResponse({
    required bool success,
    required int status,
    required String message,
    T? data
  }) = _BaseResponse;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT
  ) => _$BaseResponseFromJson<T>(json, fromJsonT);
}

@freezed 
abstract class CostResponse with _$CostResponse{
  const factory CostResponse({
    required int level,
    required int count,
    required ItemResponse item
  }) = _CostResponse;

  factory CostResponse.fromJson(Map<String, dynamic> json) =>
    _$CostResponseFromJson(json);
}