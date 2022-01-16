import 'package:ny_times_test/models/article.dart';
import 'package:ny_times_test/models/response_model.dart';
import 'package:ny_times_test/services/storage_service/storage_repo_impl.dart';
import 'package:test/test.dart';

void main() {
  late StorageRepoImpl repository;

  setUp(() {
    repository = StorageRepoImpl();
  });

  //success
  test('list of article length should not be 0 for this period ', () async {
    //act
    List<Article> result = await repository.fetchArticleBySectionAndPeriod(
        section: 'all-sections', period: '7');

    //assert
    expect(result.length != 0, true);
  });
}
