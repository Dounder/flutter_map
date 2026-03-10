import 'package:flutter_placeholder/presentation/presentation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final GetIt locator = GetIt.instance;

void setupDependencies() {
  locator.registerLazySingleton<Logger>(Logger.new);

  locator.registerFactory<MapCubit>(() => MapCubit(logger: locator<Logger>()));
}
