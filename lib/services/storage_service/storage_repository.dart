import 'package:ny_times_test/models/article.dart';

abstract class StorageRepository {
  Stream<List<Article>> fetchArticleBySectionAndPeriod(
      {required String section, required String period});
}
