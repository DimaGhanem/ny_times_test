import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final int id;
  final String title;
  final String byline;
  final String publishedDate;
  final String section;
  const Article({
    required this.title,
    required this.byline,
    required this.publishedDate,
    required this.section,
    required this.id,
  });

  @override
  List<Object> get props => [id, title, byline, publishedDate, section];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'byline': byline,
      'publishedDate': publishedDate,
      'section': section,
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      id: map['id'],
      title: map['title'],
      byline: map['byline'],
      publishedDate: map['publishedDate'],
      section: map['section'],
    );
  }
}
