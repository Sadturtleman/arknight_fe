// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OperatorRequest _$OperatorRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OperatorRequest', json, ($checkedConvert) {
      final val = _OperatorRequest(
        code: $checkedConvert('code', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$OperatorRequestToJson(_OperatorRequest instance) =>
    <String, dynamic>{'code': instance.code};

_OperatorListRequest _$OperatorListRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OperatorListRequest', json, ($checkedConvert) {
      final val = _OperatorListRequest(
        skip: $checkedConvert('skip', (v) => (v as num).toInt()),
        limit: $checkedConvert('limit', (v) => (v as num).toInt()),
        rarity: $checkedConvert('rarity', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$OperatorListRequestToJson(
  _OperatorListRequest instance,
) => <String, dynamic>{
  'skip': instance.skip,
  'limit': instance.limit,
  'rarity': instance.rarity,
};
