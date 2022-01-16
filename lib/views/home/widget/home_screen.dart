import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_test/models/article.dart';
import 'package:ny_times_test/views/home/bloc/home_bloc.dart';

import 'drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          actionsIconTheme: Theme.of(context).iconTheme,
          title: Text('NY Times Most Popular'),
          actions: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
              ),
            ),
          ],
        ),
        body: ArticleListWidget());
  }
}

class ArticleListWidget extends StatefulWidget {
  ArticleListWidget({Key? key}) : super(key: key);

  @override
  _ArticleListWidgetState createState() => _ArticleListWidgetState();
}

class _ArticleListWidgetState extends State<ArticleListWidget> {
  // late HomeBloc homeBloc;

  List<Article> articles = [];
  @override
  void initState() {
    // homeBloc = BlocProvider.of<HomeBloc>(context)..add(ArticlesStartFetching());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeState>(
      stream: BlocProvider.of<HomeBloc>(context).handleArticlesStartFetching(),
      builder: (context, snapshot) {
        final state = snapshot.data;
        if (state != null) {
          _mapStateToActions(state);
        }
        return Container(child: Text('Article length  ${articles.length}'));
      },
    );
  }

  void _mapStateToActions(HomeState state) {
    if (state is ArticlesLoadSuccess) {
      articles = state.articles;
    }
  }
}
