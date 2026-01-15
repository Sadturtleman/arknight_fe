// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OperatorResponse _$OperatorResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_OperatorResponse',
      json,
      ($checkedConvert) {
        final val = _OperatorResponse(
          characterId: $checkedConvert(
            'character_id',
            (v) => (v as num).toInt(),
          ),
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          rarity: $checkedConvert('rarity', (v) => (v as num).toInt()),
          profession: $checkedConvert(
            'profession',
            (v) => ProfessionResponse.fromJson(v as Map<String, dynamic>),
          ),
          subProfession: $checkedConvert(
            'sub_profession',
            (v) => SubProfessionResponse.fromJson(v as Map<String, dynamic>),
          ),
          iconUrl: $checkedConvert('icon_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'characterId': 'character_id',
        'subProfession': 'sub_profession',
        'iconUrl': 'icon_url',
      },
    );

Map<String, dynamic> _$OperatorResponseToJson(_OperatorResponse instance) =>
    <String, dynamic>{
      'character_id': instance.characterId,
      'code': instance.code,
      'name': instance.name,
      'rarity': instance.rarity,
      'profession': instance.profession.toJson(),
      'sub_profession': instance.subProfession.toJson(),
      'icon_url': instance.iconUrl,
    };

_ProfessionResponse _$ProfessionResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ProfessionResponse', json, ($checkedConvert) {
      final val = _ProfessionResponse(
        professionId: $checkedConvert('profession_id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'professionId': 'profession_id'});

Map<String, dynamic> _$ProfessionResponseToJson(_ProfessionResponse instance) =>
    <String, dynamic>{
      'profession_id': instance.professionId,
      'name': instance.name,
    };

_SubProfessionResponse _$SubProfessionResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_SubProfessionResponse',
  json,
  ($checkedConvert) {
    final val = _SubProfessionResponse(
      subProfessionId: $checkedConvert('sub_profession_id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {'subProfessionId': 'sub_profession_id'},
);

Map<String, dynamic> _$SubProfessionResponseToJson(
  _SubProfessionResponse instance,
) => <String, dynamic>{
  'sub_profession_id': instance.subProfessionId,
  'name': instance.name,
};

_CharacterDetailResponse _$CharacterDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_CharacterDetailResponse',
  json,
  ($checkedConvert) {
    final val = _CharacterDetailResponse(
      characterId: $checkedConvert('character_id', (v) => (v as num).toInt()),
      code: $checkedConvert('code', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      rarity: $checkedConvert('rarity', (v) => (v as num).toInt()),
      profession: $checkedConvert(
        'profession',
        (v) => ProfessionResponse.fromJson(v as Map<String, dynamic>),
      ),
      subProfession: $checkedConvert(
        'sub_profession',
        (v) => SubProfessionResponse.fromJson(v as Map<String, dynamic>),
      ),
      tags: $checkedConvert(
        'tags',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      stat: $checkedConvert(
        'stat',
        (v) => (v as List<dynamic>)
            .map(
              (e) => OperatorStatResponse.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      itemUsage: $checkedConvert('item_usage', (v) => v as String),
      itemDesc: $checkedConvert('item_desc', (v) => v as String),
      iconUrl: $checkedConvert('icon_url', (v) => v as String),
      portraitUrl: $checkedConvert('portrait_url', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'characterId': 'character_id',
    'subProfession': 'sub_profession',
    'itemUsage': 'item_usage',
    'itemDesc': 'item_desc',
    'iconUrl': 'icon_url',
    'portraitUrl': 'portrait_url',
  },
);

Map<String, dynamic> _$CharacterDetailResponseToJson(
  _CharacterDetailResponse instance,
) => <String, dynamic>{
  'character_id': instance.characterId,
  'code': instance.code,
  'name': instance.name,
  'rarity': instance.rarity,
  'profession': instance.profession.toJson(),
  'sub_profession': instance.subProfession.toJson(),
  'tags': instance.tags,
  'stat': instance.stat.map((e) => e.toJson()).toList(),
  'item_usage': instance.itemUsage,
  'item_desc': instance.itemDesc,
  'icon_url': instance.iconUrl,
  'portrait_url': instance.portraitUrl,
};

_OperatorStatResponse _$OperatorStatResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_OperatorStatResponse',
  json,
  ($checkedConvert) {
    final val = _OperatorStatResponse(
      phase: $checkedConvert('phase', (v) => (v as num).toInt()),
      maxLevel: $checkedConvert('max_level', (v) => (v as num).toInt()),
      baseHp: $checkedConvert('base_hp', (v) => (v as num).toInt()),
      baseAtk: $checkedConvert('base_atk', (v) => (v as num).toInt()),
      baseDef: $checkedConvert('base_def', (v) => (v as num).toInt()),
      maxHp: $checkedConvert('max_hp', (v) => (v as num).toInt()),
      maxAtk: $checkedConvert('max_atk', (v) => (v as num).toInt()),
      maxDef: $checkedConvert('max_def', (v) => (v as num).toInt()),
      magicResistance: $checkedConvert(
        'magic_resistance',
        (v) => (v as num).toInt(),
      ),
      cost: $checkedConvert('cost', (v) => (v as num).toInt()),
      blockCnt: $checkedConvert('block_cnt', (v) => (v as num).toInt()),
      range: $checkedConvert(
        'range',
        (v) => RangeResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'maxLevel': 'max_level',
    'baseHp': 'base_hp',
    'baseAtk': 'base_atk',
    'baseDef': 'base_def',
    'maxHp': 'max_hp',
    'maxAtk': 'max_atk',
    'maxDef': 'max_def',
    'magicResistance': 'magic_resistance',
    'blockCnt': 'block_cnt',
  },
);

Map<String, dynamic> _$OperatorStatResponseToJson(
  _OperatorStatResponse instance,
) => <String, dynamic>{
  'phase': instance.phase,
  'max_level': instance.maxLevel,
  'base_hp': instance.baseHp,
  'base_atk': instance.baseAtk,
  'base_def': instance.baseDef,
  'max_hp': instance.maxHp,
  'max_atk': instance.maxAtk,
  'max_def': instance.maxDef,
  'magic_resistance': instance.magicResistance,
  'cost': instance.cost,
  'block_cnt': instance.blockCnt,
  'range': instance.range.toJson(),
};

_OperatorSkillResponse _$OperatorSkillResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_OperatorSkillResponse', json, ($checkedConvert) {
  final val = _OperatorSkillResponse(
    skills: $checkedConvert(
      'skills',
      (v) => (v as List<dynamic>)
          .map((e) => SkillResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$OperatorSkillResponseToJson(
  _OperatorSkillResponse instance,
) => <String, dynamic>{
  'skills': instance.skills.map((e) => e.toJson()).toList(),
};

_OperatorSkillCostResponse _$OperatorSkillCostResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_OperatorSkillCostResponse',
  json,
  ($checkedConvert) {
    final val = _OperatorSkillCostResponse(
      skillCosts: $checkedConvert(
        'skill_costs',
        (v) => (v as List<dynamic>)
            .map((e) => CostResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'skillCosts': 'skill_costs'},
);

Map<String, dynamic> _$OperatorSkillCostResponseToJson(
  _OperatorSkillCostResponse instance,
) => <String, dynamic>{
  'skill_costs': instance.skillCosts.map((e) => e.toJson()).toList(),
};

_OperatorFullDetailResponse _$OperatorFullDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_OperatorFullDetailResponse', json, ($checkedConvert) {
  final val = _OperatorFullDetailResponse(
    profile: $checkedConvert(
      'profile',
      (v) => CharacterDetailResponse.fromJson(v as Map<String, dynamic>),
    ),
    skills: $checkedConvert(
      'skills',
      (v) => OperatorSkillResponse.fromJson(v as Map<String, dynamic>),
    ),
    growth: $checkedConvert(
      'growth',
      (v) => OperatorSkillCostResponse.fromJson(v as Map<String, dynamic>),
    ),
    modules: $checkedConvert(
      'modules',
      (v) => ModuleResponse.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$OperatorFullDetailResponseToJson(
  _OperatorFullDetailResponse instance,
) => <String, dynamic>{
  'profile': instance.profile.toJson(),
  'skills': instance.skills.toJson(),
  'growth': instance.growth.toJson(),
  'modules': instance.modules.toJson(),
};
