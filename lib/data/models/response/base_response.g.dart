// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => $checkedCreate('_BaseResponse', json, ($checkedConvert) {
  final val = _BaseResponse<T>(
    success: $checkedConvert('success', (v) => v as bool),
    status: $checkedConvert('status', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => _$nullableGenericFromJson(v, fromJsonT),
    ),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseToJson<T>(
  _BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.success,
  'status': instance.status,
  'message': instance.message,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

_CostResponse _$CostResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CostResponse', json, ($checkedConvert) {
      final val = _CostResponse(
        level: $checkedConvert('level', (v) => (v as num).toInt()),
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        item: $checkedConvert(
          'item',
          (v) => ItemResponse.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CostResponseToJson(_CostResponse instance) =>
    <String, dynamic>{
      'level': instance.level,
      'count': instance.count,
      'item': instance.item.toJson(),
    };
