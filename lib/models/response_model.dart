import 'package:ny_times_test/models/article.dart';

class ResponseModel {
  final List<Article> results;
  final String status;

  ResponseModel(this.results, this.status);

  ResponseModel.fromMap(Map<String, dynamic> json)
      : results = (json["results"] as List)
            .map((i) => new Article.fromMap(i))
            .toList(),
        status = "";

  ResponseModel.withError(String status)
      : results = [],
        status = status;
}
