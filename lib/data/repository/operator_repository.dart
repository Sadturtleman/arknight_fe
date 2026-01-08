import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/dio_client.dart';
import '../models/operator_model.dart';

// 리포지토리 제공자 (Dio 의존성 주입)
final operatorRepositoryProvider = Provider<OperatorRepository>((ref) {
  return OperatorRepository(ref.watch(dioProvider));
});

class OperatorRepository {
  final Dio _dio;

  OperatorRepository(this._dio);

  Future<List<OperatorModel>> getOperators({int skip = 0, int limit = 50, String? rarity}) async {
    try {
      final response = await _dio.get(
        '/operators',
        queryParameters: {
          'skip': skip,
          'limit': limit,
          'rarity': rarity,
        },
      );
      
      // Dio는 자동으로 JSON을 디코딩해줍니다 (jsonDecode 불필요)
      final List<dynamic> data = response.data;
      return data.map((json) => OperatorModel.fromJson(json)).toList();
    } on DioException catch (e) {
      throw Exception('API Error: ${e.message}');
    }
  }

  Future<OperatorDetailModel> getOperatorDetail(String name) async {
  try {
    final response = await _dio.get('/operators/$name');
    return OperatorDetailModel.fromJson(response.data);
  } on DioException catch (e) {
    throw Exception('상세 정보 로드 실패: ${e.message}');
  }
}
}