part of 'locator.dart';

/// Sets up and registers services in the service locator.
///
/// This method configures lazy singleton instances for the application's services,
/// ensuring that they are only created when first accessed.
/// Each service is initialized with the necessary dependencies, such as the Logger.
/// Also configures factory instances for services that are created on demand.
void _setupServices() {
  locator.registerLazySingleton<Logger>(Logger.new);
  locator.registerLazySingleton<KvStorageService>(() => KvStorageServiceImpl(logger: locator<Logger>()));
  locator.registerLazySingleton<PermissionService>(() => PermissionServiceImpl(logger: locator<Logger>()));
  locator.registerFactory<MapGraphicService>(() => MapGraphicServiceImpl(logger: locator<Logger>()));
  locator.registerFactory<MapDistanceService>(() => MapDistanceServiceImpl(logger: locator<Logger>()));
}
