import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator_request.freezed.dart';
part 'operator_request.g.dart';

@freezed
abstract class OperatorRequest with _$OperatorRequest {
  const factory OperatorRequest({
    required String code
  }) = _OperatorRequest;

  factory OperatorRequest.fromJson(Map<String, dynamic> json) =>
    _$OperatorRequestFromJson(json);
}

@freezed
abstract class OperatorListRequest with _$OperatorListRequest{
  const factory OperatorListRequest({
    required int skip,
    required int limit,
    required int rarity
  }) = _OperatorListRequest;

  factory OperatorListRequest.fromJson(Map<String, dynamic> json) =>
    _$OperatorListRequestFromJson(json);
}