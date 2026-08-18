import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const String pokeApiBaseUrl = 'https://pokeapi.co/api/v2';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio provideDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: pokeApiBaseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );
    dio.interceptors.add(
      LogInterceptor(requestBody: false, responseBody: false),
    );
    return dio;
  }
}
