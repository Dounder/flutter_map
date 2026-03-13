import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:map_test/presentation/presentation.dart';

part 'locator_services.dart';

final GetIt locator = GetIt.instance;

void setupDependencies() {
  _setupServices();

  locator.registerLazySingleton<GpsCubit>(
    () => GpsCubit(logger: locator<Logger>(), permissionService: locator<PermissionService>()),
  );
  locator.registerFactory<MapCubit>(
    () => MapCubit(
      logger: locator<Logger>(),
      gpsCubit: locator<GpsCubit>(),
      graphicService: locator<MapGraphicService>(),
    ),
  );
}
