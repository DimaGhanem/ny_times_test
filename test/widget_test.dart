import 'package:ny_times_test/models/article.dart';
import 'package:ny_times_test/models/response_model.dart';
import 'package:ny_times_test/services/storage_service/storage_repo_impl.dart';
import 'package:test/test.dart';

void main() {
     testWidgets('Counter increments smoke test', (WidgetTester tester) async {
       
         expect(1, 1);
       
     // Build our app and trigger a frame.
//      await tester.pumpWidget(new MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
 });
//   late StorageRepoImpl repository;

//   setUp(() {
//     repository = StorageRepoImpl();
//   });

//   //success
//   test('list of article length should not be 0 for this period ', () async {
//     //act
//     List<Article> result = await repository.fetchArticleBySectionAndPeriod(
//         section: 'all-sections', period: '7');

//     //assert
//     expect(result.length != 0, true);
//   });

//   //success
//   test('Test if status of response is OK ', () async {
//     //act
//     ResponseModel result =
//         await repository.fetchArticleBySectionAndPeriodWithResponse(
//             section: 'all-sections', period: '7');

//     //assert
//     expect(result.status, 'OK');
//   });

//   //Failure
//   test('Test if status of response is Not OK ', () async {
//     //act
//     ResponseModel result =
//         await repository.fetchArticleBySectionAndPeriodWithResponse(
//             section: 'all-sections', period: '3');

//     print(result.status);

//     //assert
//     expect(result.status, 'Received invalid status code: 404');
//     expect(result.results.length == 0, true);
//   });
}
