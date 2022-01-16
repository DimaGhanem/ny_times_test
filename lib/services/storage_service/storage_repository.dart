import 'package:ny_times_test/models/article.dart';
import 'package:ny_times_test/models/response_model.dart';

abstract class StorageRepository {
  Future<List<Article>> fetchArticleBySectionAndPeriod(
      {required String section, required String period});

  Future<ResponseModel> fetchArticleBySectionAndPeriodWithResponse(
      {required String section, required String period});
}
