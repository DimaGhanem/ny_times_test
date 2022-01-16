import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ny_times_test/models/article.dart';

import '/services/storage_service/storage_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final StorageRepository storageRepository;
  HomeBloc({
    required this.storageRepository,
  }) : super(HomeInitial()) {
    on<HomeEvent>(mapEventToState);
  }

  void mapEventToState(HomeEvent event, Emitter<HomeState> emit) async {
    if (event is ArticlesStartFetching) {
      handleArticlesStartFetching();
    }
  }

  Stream<HomeState> handleArticlesStartFetching() async* {
    yield ArticlesLoading();
    final articles = await storageRepository.fetchArticleBySectionAndPeriod(
        period: '7', section: 'all-sections');
    yield ArticlesLoadSuccess(articles);
  }
}
