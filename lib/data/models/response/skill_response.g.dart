// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkillResponse _$SkillResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_SkillResponse',
      json,
      ($checkedConvert) {
        final val = _SkillResponse(
          skillId: $checkedConvert('skill_id', (v) => (v as num).toInt()),
          skillCode: $checkedConvert('skill_code', (v) => v as String),
          nameKo: $checkedConvert('name_ko', (v) => v as String),
          iconId: $checkedConvert('icon_id', (v) => v as String),
          levels: $checkedConvert(
            'levels',
            (v) => (v as List<dynamic>)
                .map((e) => LevelResponse.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          masteryCosts: $checkedConvert(
            'mastery_costs',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => SkillMasteryCostResponse.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'skillId': 'skill_id',
        'skillCode': 'skill_code',
        'nameKo': 'name_ko',
        'iconId': 'icon_id',
        'masteryCosts': 'mastery_costs',
      },
    );

Map<String, dynamic> _$SkillResponseToJson(_SkillResponse instance) =>
    <String, dynamic>{
      'skill_id': instance.skillId,
      'skill_code': instance.skillCode,
      'name_ko': instance.nameKo,
      'icon_id': instance.iconId,
      'levels': instance.levels.map((e) => e.toJson()).toList(),
      'mastery_costs': instance.masteryCosts?.map((e) => e.toJson()).toList(),
    };

_LevelResponse _$LevelResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LevelResponse',
      json,
      ($checkedConvert) {
        final val = _LevelResponse(
          level: $checkedConvert('level', (v) => (v as num).toInt()),
          spCost: $checkedConvert('sp_cost', (v) => (v as num).toInt()),
          initialSp: $checkedConvert('initial_sp', (v) => (v as num).toInt()),
          duration: $checkedConvert('duration', (v) => (v as num).toInt()),
          description: $checkedConvert('description', (v) => v as String),
          blackboard: $checkedConvert(
            'blackboard',
            (v) => (v as List<dynamic>)
                .map(
                  (e) => BlackboardResponse.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          rangeData: $checkedConvert('range_data', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'spCost': 'sp_cost',
        'initialSp': 'initial_sp',
        'rangeData': 'range_data',
      },
    );

Map<String, dynamic> _$LevelResponseToJson(_LevelResponse instance) =>
    <String, dynamic>{
      'level': instance.level,
      'sp_cost': instance.spCost,
      'initial_sp': instance.initialSp,
      'duration': instance.duration,
      'description': instance.description,
      'blackboard': instance.blackboard.map((e) => e.toJson()).toList(),
      'range_data': instance.rangeData,
    };

_BlackboardResponse _$BlackboardResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_BlackboardResponse', json, ($checkedConvert) {
      final val = _BlackboardResponse(
        key: $checkedConvert('key', (v) => v as String),
        value: $checkedConvert('value', (v) => (v as num).toDouble()),
        valueStr: $checkedConvert('value_str', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'valueStr': 'value_str'});

Map<String, dynamic> _$BlackboardResponseToJson(_BlackboardResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'value_str': instance.valueStr,
    };

_SkillMasteryCostResponse _$SkillMasteryCostResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_SkillMasteryCostResponse',
  json,
  ($checkedConvert) {
    final val = _SkillMasteryCostResponse(
      masteryLevel: $checkedConvert('mastery_level', (v) => (v as num).toInt()),
      count: $checkedConvert('count', (v) => (v as num).toInt()),
      item: $checkedConvert(
        'item',
        (v) => ItemResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'masteryLevel': 'mastery_level'},
);

Map<String, dynamic> _$SkillMasteryCostResponseToJson(
  _SkillMasteryCostResponse instance,
) => <String, dynamic>{
  'mastery_level': instance.masteryLevel,
  'count': instance.count,
  'item': instance.item.toJson(),
};
