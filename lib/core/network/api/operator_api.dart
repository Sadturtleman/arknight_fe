import 'package:arknight_fe/core/network/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'operator_api.g.dart';

@RestApi()
abstract class OperatorApi {
  factory OperatorApi(Dio dio) = _OperatorApi;

}

final operatorApiProvider = Provider<OperatorApi>((ref) {
  final dio = ref.watch(dioProvider);
  return OperatorApi(dio);
});