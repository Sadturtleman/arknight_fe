import 'package:arknight_fe/data/models/response/base_response.dart';
import 'package:arknight_fe/data/models/response/module_response.dart';
import 'package:arknight_fe/data/models/response/range_response.dart';
import 'package:arknight_fe/data/models/response/skill_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operator_response.freezed.dart';
part 'operator_response.g.dart';

@freezed
abstract class OperatorResponse with _$OperatorResponse {
  const factory OperatorResponse({
    required int characterId,
    required String code,
    required String name,
    required String rarity,
    required ProfessionResponse profession,
    required SubProfessionResponse subProfession,
    required String iconUrl,
  }) = _OperatorResponse;

  factory OperatorResponse.fromJson(Map<String, dynamic> json) => 
      _$OperatorResponseFromJson(json);
}

@freezed
abstract class ProfessionResponse with _$ProfessionResponse {
  const factory ProfessionResponse({
    required String professionId,
    required String name,
  }) = _ProfessionResponse;

  factory ProfessionResponse.fromJson(Map<String, dynamic> json) => 
      _$ProfessionResponseFromJson(json);
}

@freezed
abstract class SubProfessionResponse with _$SubProfessionResponse {
  const factory SubProfessionResponse({
    required String subProfessionId,
    required String name,
  }) = _SubProfessionResponse;

  factory SubProfessionResponse.fromJson(Map<String, dynamic> json) => 
      _$SubProfessionResponseFromJson(json);
}

@freezed
abstract class CharacterDetailResponse with _$CharacterDetailResponse {
  const factory CharacterDetailResponse({
    required int characterId,
    required String code,
    required String name,
    required String rarity,
    required ProfessionResponse profession,
    required SubProfessionResponse subProfession,
    required List<String> tags,
    required List<OperatorStatResponse> stat,
    required String itemUsage,
    required String itemDesc,
    required String iconUrl,
    required String portraitUrl,
  }) = _CharacterDetailResponse;

  factory CharacterDetailResponse.fromJson(Map<String, dynamic> json) => 
      _$CharacterDetailResponseFromJson(json);
}

@freezed
abstract class OperatorStatResponse with _$OperatorStatResponse{
  const factory OperatorStatResponse({
    required int phase,
    required int maxLevel,
    required int baseHp,
    required int baseAtk,
    required int baseDef,
    required int maxHp,
    required int maxAtk,
    required int maxDef,
    required int magicResistance,
    required int cost,
    required int blockCnt,
    required RangeResponse range
  }) = _OperatorStatResponse;

  factory OperatorStatResponse.fromJson(Map<String, dynamic> json) => 
    _$OperatorStatResponseFromJson(json);
}

@freezed
abstract class OperatorSkillResponse with _$OperatorSkillResponse{
  const factory OperatorSkillResponse({
    required List<SkillResponse> skills
  }) = _OperatorSkillResponse;

  factory OperatorSkillResponse.fromJson(Map<String, dynamic> json) =>
    _$OperatorSkillResponseFromJson(json);
}


@freezed
abstract class OperatorSkillCostResponse with _$OperatorSkillCostResponse{
  const factory OperatorSkillCostResponse({
    required List<CostResponse> skillCosts
  }) = _OperatorSkillCostResponse;

  factory OperatorSkillCostResponse.fromJson(Map<String, dynamic> json) =>
    _$OperatorSkillCostResponseFromJson(json);
}

@freezed
abstract class OperatorFullDetailResponse with _$OperatorFullDetailResponse{
  const factory OperatorFullDetailResponse({
    required CharacterDetailResponse profile,
    required OperatorSkillResponse skills,
    required OperatorSkillCostResponse growth,
    required ModuleResponse modules
  }) = _OperatorFullDetailResponse;

  factory OperatorFullDetailResponse.fromJson(Map<String, dynamic> json) =>
    _$OperatorFullDetailResponseFromJson(json);
}