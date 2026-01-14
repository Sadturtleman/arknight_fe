import 'package:arknight_fe/data/models/response/base_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'module_response.freezed.dart';
part 'module_response.g.dart';

@freezed
abstract class ModuleResponse with _$ModuleResponse{
  const factory ModuleResponse({
    required List<ModuleDetailResponse> modules
  }) = _ModuleResponse;
  
  factory ModuleResponse.fromJson(Map<String, dynamic> json) =>
    _$ModuleResponseFromJson(json);
}

@freezed
abstract class ModuleDetailResponse with _$ModuleDetailResponse{
  const factory ModuleDetailResponse({
    required int moduleId,
    required String moduleCode,
    required String nameKo,
    required String iconId,
    required String description,
    required List<CostResponse> costs
  }) = _ModuleDetailResponse;

  factory ModuleDetailResponse.fromJson(Map<String, dynamic> json) =>
    _$ModuleDetailResponseFromJson(json);
}

