import 'package:arknight_fe/data/models/response/item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_response.freezed.dart';
part 'skill_response.g.dart';

@freezed
abstract class SkillResponse with _$SkillResponse{
  const factory SkillResponse({
    required int skillId,
    required String skillCode,
    required String nameKo,
    required String iconId,
    required List<LevelResponse> levels,
    required List<SkillMasteryCostResponse>? masteryCosts

  }) = _SkillResponse;

  factory SkillResponse.fromJson(Map<String, dynamic> json) =>
    _$SkillResponseFromJson(json);
}

@freezed
abstract class LevelResponse with _$LevelResponse{
  const factory LevelResponse({
    required int level,
    required int spCost,
    required int initialSp,
    required int duration,
    required String description,
    required List<BlackboardResponse> blackboard,
    required String? rangeData
  }) = _LevelResponse;

  factory LevelResponse.fromJson(Map<String, dynamic> json) =>
    _$LevelResponseFromJson(json);
}

@freezed
abstract class BlackboardResponse with _$BlackboardResponse{
  const factory BlackboardResponse({
    required String key,
    required double value,
    required String? valueStr
  }) = _BlackboardResponse;

  factory BlackboardResponse.fromJson(Map<String, dynamic> json) =>
    _$BlackboardResponseFromJson(json);
}

@freezed
abstract class SkillMasteryCostResponse with _$SkillMasteryCostResponse{
  const factory SkillMasteryCostResponse({
    required int masteryLevel,
    required int count,
    required ItemResponse item
  }) = _SkillMasteryCostResponse;

  factory SkillMasteryCostResponse.fromJson(Map<String, dynamic> json) =>
    _$SkillMasteryCostResponseFromJson(json);
}