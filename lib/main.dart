import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/presentation/presentation.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    await dotenv.load();

    setupDependencies();

    MapboxOptions.setAccessToken(Envs.mapBoxApi);

    runApp(
      MultiBlocProvider(
        providers: [BlocProvider(create: (context) => locator<DownloadManagerCubit>())],
        child: const MyApp(),
      ),
    );
  } catch (e) {
    // ignore: avoid_print
    print('Error during app initialization: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    title: 'Material App',
    debugShowCheckedModeBanner: false,
    theme: AppTheme().theme(),
    routerConfig: appRouter,
  );
}
