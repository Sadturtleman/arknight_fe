// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModuleResponse _$ModuleResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ModuleResponse', json, ($checkedConvert) {
      final val = _ModuleResponse(
        modules: $checkedConvert(
          'modules',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ModuleDetailResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ModuleResponseToJson(_ModuleResponse instance) =>
    <String, dynamic>{
      'modules': instance.modules.map((e) => e.toJson()).toList(),
    };

_ModuleDetailResponse _$ModuleDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  '_ModuleDetailResponse',
  json,
  ($checkedConvert) {
    final val = _ModuleDetailResponse(
      moduleId: $checkedConvert('module_id', (v) => (v as num).toInt()),
      moduleCode: $checkedConvert('module_code', (v) => v as String),
      nameKo: $checkedConvert('name_ko', (v) => v as String),
      iconId: $checkedConvert('icon_id', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String),
      costs: $checkedConvert(
        'costs',
        (v) => (v as List<dynamic>)
            .map((e) => CostResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'moduleId': 'module_id',
    'moduleCode': 'module_code',
    'nameKo': 'name_ko',
    'iconId': 'icon_id',
  },
);

Map<String, dynamic> _$ModuleDetailResponseToJson(
  _ModuleDetailResponse instance,
) => <String, dynamic>{
  'module_id': instance.moduleId,
  'module_code': instance.moduleCode,
  'name_ko': instance.nameKo,
  'icon_id': instance.iconId,
  'description': instance.description,
  'costs': instance.costs.map((e) => e.toJson()).toList(),
};
