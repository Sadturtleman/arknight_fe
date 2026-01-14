import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart'; // 1. 임포트 추가

class DioFactory {
  static Dio create(){
    final dio = Dio(
      BaseOptions(
        baseUrl: "https://arknightserver.cloud/api/v1",
        connectTimeout: const Duration(seconds: 10)
      )
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,        // 요청 헤더 출력
        requestBody: true,          // 요청 바디 출력 (POST 할 때 중요)
        responseBody: true,         // 응답 바디 출력 (JSON 확인용)
        responseHeader: false,      // 응답 헤더는 보통 안 봐도 됨 (지저분함)
        error: true,                // 에러 로그 출력
        compact: true,              // 로그를 좀 더 심플하게 출력
        maxWidth: 90,               // 가로 길이 제한
      ),
    );

    if (!kIsWeb){

    } 

    return dio;
  }
}

final dioProvider = Provider<Dio>((ref) {
  return DioFactory.create();
});
