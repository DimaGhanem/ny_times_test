import 'package:ny_times_test/models/article.dart';
import 'package:ny_times_test/models/response_model.dart';

import '../article_api_provider.dart';
import 'storage_repository.dart';

class StorageRepoImpl extends StorageRepository {
  ArticleApiProvider _apiProvider = ArticleApiProvider();

  @override
  Future<List<Article>> fetchArticleBySectionAndPeriod(
      {required String section, required String period}) async {
    ResponseModel _response =
        await _apiProvider.getArticle(section: section, period: period);
    return _response.results;
  }

  @override
  Future<ResponseModel> fetchArticleBySectionAndPeriodWithResponse(
      {required String section, required String period}) async {
    ResponseModel _response =
        await _apiProvider.getArticle(section: section, period: period);
    return _response;
  }
}
