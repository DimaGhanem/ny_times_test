part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class ArticlesLoading extends HomeState {}

class ArticlesLoadSuccess extends HomeState {
  final List<Article> articles;

  const ArticlesLoadSuccess(this.articles)
      : assert(articles != null, "field must equal value");

  @override
  List<Object> get props => [articles];
}
