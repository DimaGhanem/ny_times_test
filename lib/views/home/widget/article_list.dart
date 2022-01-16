import 'package:flutter/material.dart';
import 'package:ny_times_test/models/article.dart';

import 'article_item_widget.dart';

class ArticleList extends StatelessWidget {
  final List<Article> articles;
  const ArticleList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        final Article article = articles[index];
        return ArticleItemWidget(article: article);
      },
    );
  }
}
