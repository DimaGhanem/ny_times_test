import 'package:ny_times_test/models/article.dart';

import 'storage_repository.dart';

class StorageRepoImpl extends StorageRepository {
  @override
  Stream<List<Article>> fetchArticleBySectionAndPeriod(
      {required String section, required String period}) {
    // TODO: implement fetchArticleBySectionAndPeriod
    throw UnimplementedError();
  }
}
