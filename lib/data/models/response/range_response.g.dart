// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RangeResponse _$RangeResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_RangeResponse', json, ($checkedConvert) {
      final val = _RangeResponse(
        rangeId: $checkedConvert('range_id', (v) => v as String),
        grids: $checkedConvert(
          'grids',
          (v) => (v as List<dynamic>)
              .map((e) => GridResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'rangeId': 'range_id'});

Map<String, dynamic> _$RangeResponseToJson(_RangeResponse instance) =>
    <String, dynamic>{
      'range_id': instance.rangeId,
      'grids': instance.grids.map((e) => e.toJson()).toList(),
    };

_GridResponse _$GridResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_GridResponse', json, ($checkedConvert) {
      final val = _GridResponse(
        row: $checkedConvert('row', (v) => (v as num).toInt()),
        col: $checkedConvert('col', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$GridResponseToJson(_GridResponse instance) =>
    <String, dynamic>{'row': instance.row, 'col': instance.col};
