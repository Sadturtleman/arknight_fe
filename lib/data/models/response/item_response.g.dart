// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemResponse _$ItemResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ItemResponse',
      json,
      ($checkedConvert) {
        final val = _ItemResponse(
          itemId: $checkedConvert('item_id', (v) => (v as num).toInt()),
          itemCode: $checkedConvert('item_code', (v) => v as String),
          nameKo: $checkedConvert('name_ko', (v) => v as String),
          rarity: $checkedConvert('rarity', (v) => (v as num).toInt()),
          iconId: $checkedConvert('icon_id', (v) => v as String),
          itemType: $checkedConvert('item_type', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'itemId': 'item_id',
        'itemCode': 'item_code',
        'nameKo': 'name_ko',
        'iconId': 'icon_id',
        'itemType': 'item_type',
      },
    );

Map<String, dynamic> _$ItemResponseToJson(_ItemResponse instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'item_code': instance.itemCode,
      'name_ko': instance.nameKo,
      'rarity': instance.rarity,
      'icon_id': instance.iconId,
      'item_type': instance.itemType,
      'description': instance.description,
    };
