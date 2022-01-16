import 'package:dio/dio.dart';
import 'package:ny_times_test/models/response_model.dart';
import 'package:ny_times_test/views/utils/contants.dart';

import '../utils/logging_interceptor.dart';

class ArticleApiProvider {
  late Dio _dio;

  ArticleApiProvider() {
    BaseOptions options =
        BaseOptions(receiveTimeout: 5000, connectTimeout: 5000);
    _dio = Dio(options);
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<ResponseModel> getArticle(
      {required String section, required String period}) async {
    //we can save api-key in shared preference

    final String _endpointGetArticles =
        'https://api.nytimes.com/svc/mostpopular/v2/mostviewed/$section/$period.json?api-key=$kYourApiKey';

    try {
      Response response = await _dio.get(_endpointGetArticles);
      var result = ResponseModel.fromMap(response.data);
      return result;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ResponseModel.withError(_handleError(error: error));
    }
  }

  String _handleError({required error}) {
    String errorDescription = "";
    if (error is DioError) {
      DioError dioError = error as DioError;
      switch (dioError.type) {
        case DioErrorType.cancel:
          errorDescription = "Request to API server was cancelled";
          break;
        case DioErrorType.connectTimeout:
          errorDescription = "Connection timeout with API server";
          break;
        case DioErrorType.other:
          errorDescription =
              "Connection to API server failed due to internet connection";
          break;
        case DioErrorType.receiveTimeout:
          errorDescription = "Receive timeout in connection with API server";
          break;
        case DioErrorType.response:
          errorDescription =
              "Received invalid status code: ${dioError.response?.statusCode}";
          break;
        case DioErrorType.sendTimeout:
          errorDescription = "Send timeout in connection with API server";
          break;
      }
    } else {
      errorDescription = "Unexpected error occured";
    }
    return errorDescription;
  }
}
