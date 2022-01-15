import 'package:get_it/get_it.dart';

import 'services/storage_service/storage_repository.dart';
import 'views/home/bloc/home_bloc.dart';

final serviceLocator = GetIt.instance;

void serviceLocatorSetup() {
  serviceLocator.registerFactory(() => HomeBloc(
        storageRepository: serviceLocator<StorageRepository>(),
      ));
}
