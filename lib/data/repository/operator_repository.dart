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

  Future<List<OperatorModel>> getOperators() async {
    try {
      final response = await _dio.get('/operators');
      
      // Dio는 자동으로 JSON을 디코딩해줍니다 (jsonDecode 불필요)
      final List<dynamic> data = response.data;
      return data.map((json) => OperatorModel.fromJson(json)).toList();
    } on DioException catch (e) {
      throw Exception('API Error: ${e.message}');
    }
  }
}