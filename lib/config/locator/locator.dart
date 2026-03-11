import 'package:flutter_placeholder/infrastructure/infrastructure.dart';
import 'package:flutter_placeholder/presentation/presentation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final GetIt locator = GetIt.instance;

void setupDependencies() {
  locator.registerLazySingleton<Logger>(Logger.new);

  locator.registerFactory<MapCubit>(() => MapCubit(logger: locator<Logger>()));
  locator.registerFactory<GpsCubit>(
    () => GpsCubit(logger: locator<Logger>(), permissionService: locator<PermissionService>()),
  );

  _setupServices();
}

/// Sets up and registers singleton services in the service locator.
///
/// This method configures lazy singleton instances for the application's services,
/// ensuring that they are only created when first accessed.
/// Each service is initialized with the necessary dependencies, such as the Logger.
void _setupServices() {
  locator.registerLazySingleton<KvStorageService>(() => KvStorageServiceImpl(logger: locator<Logger>()));
  locator.registerLazySingleton<PermissionService>(() => PermissionServiceImpl(logger: locator<Logger>()));
}
