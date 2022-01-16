import 'package:get_it/get_it.dart';
import 'package:ny_times_test/services/storage_service/storage_repo_impl.dart';

import 'services/storage_service/storage_repository.dart';
import 'views/home/bloc/home_bloc.dart';

final serviceLocator = GetIt.instance;

void serviceLocatorSetup() {
  serviceLocator.registerFactory(() => HomeBloc(
        storageRepository: serviceLocator<StorageRepository>(),
      ));

  serviceLocator.registerFactory<StorageRepository>(() => StorageRepoImpl());
}
