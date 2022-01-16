import 'package:dio/dio.dart';
import 'package:ny_times_test/models/response_model.dart';

import '../utils/logging_interceptor.dart';

class ArticleApiProvider {
  late Dio _dio;

  ArticleApiProvider() {
    BaseOptions options =
    BaseOptions(receiveTimeout: 5000, connectTimeout: 5000);
    _dio = Dio(options);
    _dio.interceptors.add(LoggingInterceptor());
  }


}
