import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_test/models/article.dart';
import 'package:ny_times_test/views/home/bloc/home_bloc.dart';

import '../../circle_progress.dart';
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
  bool loading = true;
  bool error = false;
  String failureError = '';
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
        if (error) {
          return Center(child: Text('$failureError'));
        } else if (loading) {
          return const Center(child: CircleProgress());
        } else if (!loading && !error) {
          return Center(child: Text('${articles.length}'));
        } else {
          return SizedBox();
        }
      },
    );
  }

  void _mapStateToActions(HomeState state) {
    if (state is ArticlesLoadSuccess) {
      loading = false;
      articles = state.articles;
    }
    if (state is ArticlesLoading) {
      loading = true;
    }
    if (state is LoadFailed) {
      loading = false;
      error = true;
      failureError = state.failure.code!;
    }
  }
}
