import 'package:arknight_fe/core/network/api/operator_api.dart';
import 'package:arknight_fe/data/models/requests/operator_request.dart';
import 'package:arknight_fe/data/models/response/module_response.dart';
import 'package:arknight_fe/data/models/response/operator_response.dart';

class OperatorRepo {
  final OperatorApi _api;

  OperatorRepo(this._api);

  Future<List<OperatorResponse>> getOperators(OperatorListRequest request) async {
    final response = await _api.getOperators(request.skip, request.limit, request.rarity);
    final data = response.data;
    
    return data!;
  }

  Future<CharacterDetailResponse> getOperatorDetail(OperatorRequest request) async {
    final response = await _api.getOperatorProfile(request.code);

    return response.data!;
  }

  Future<OperatorSkillResponse> getOperatorSkill(OperatorRequest request) async {
    final resposne = await _api.getOperatorSkill(request.code);

    return resposne.data!;
  }

  Future<OperatorSkillCostResponse> getOperatorSkillCost(OperatorRequest request) async {
    final response = await _api.getOperatorSkillCost(request.code);

    return response.data!;
  }

  Future<ModuleResponse> getOperatorModule(OperatorRequest request) async {
    final response = await _api.getOperatorModule(request.code);

    return response.data!;
  }

  Future<OperatorFullDetailResponse> getOperatorFullDetail(OperatorRequest request) async {
    final response = await _api.getOperatorFullDetail(request.code);

    return response.data!;
  }
}