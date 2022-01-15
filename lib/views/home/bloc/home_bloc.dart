import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '/services/storage_service/storage_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final StorageRepository storageRepository;
  HomeBloc({
    required this.storageRepository,
  }) : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {}

  @override
  Future<void> close() {
    return super.close();
  }
}
