import 'package:arknight_fe/core/network/dio_client.dart';
import 'package:arknight_fe/data/models/response/base_response.dart';
import 'package:arknight_fe/data/models/response/module_response.dart';
import 'package:arknight_fe/data/models/response/operator_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'operator_api.g.dart';

@RestApi()
abstract class OperatorApi {
  factory OperatorApi(Dio dio) = _OperatorApi;
  
  @GET("/characters")
  Future<BaseResponse<List<OperatorResponse>>> getOperators(@Query("skip") int skip, @Query("limit") int limit, @Query("rarity") int rarity);

  @GET("/character/{code}/profile")
  Future<BaseResponse<CharacterDetailResponse>> getOperatorProfile(@Path("code") String code);

  @GET("/character/{code}/skills")
  Future<BaseResponse<OperatorSkillResponse>> getOperatorSkill(@Path("code") String code);

  @GET("/character/{code}/growth")
  Future<BaseResponse<OperatorSkillCostResponse>> getOperatorSkillCost(@Path("code") String code);

  @GET("/character{code}/modules")
  Future<BaseResponse<ModuleResponse>> getOperatorModule(@Path("code") String code);

  @GET("/character{code}/full-detail")
  Future<BaseResponse<OperatorFullDetailResponse>> getOperatorFullDetail(@Path("code") String code);
}

final operatorApiProvider = Provider<OperatorApi>((ref) {
  final dio = ref.watch(dioProvider);
  return OperatorApi(dio);
});