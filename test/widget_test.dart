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

  //success
  test('Test if status of response is OK ', () async {
    //act
    ResponseModel result =
        await repository.fetchArticleBySectionAndPeriodWithResponse(
            section: 'all-sections', period: '7');

    //assert
    expect(result.status, 'OK');
  });

  //Failure
  test('Test if status of response is Not OK ', () async {
    //act
    ResponseModel result =
        await repository.fetchArticleBySectionAndPeriodWithResponse(
            section: 'all-sections', period: '3');

    print(result.status);

    //assert
    expect(result.status, 'Received invalid status code: 404');
    expect(result.results.length == 0, true);
  });
}
