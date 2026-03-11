import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_placeholder/config/config.dart';
import 'package:flutter_placeholder/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

class MapScreen extends StatelessWidget {
  static const name = 'map_screen';

  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(lazy: false, create: (context) => locator<MapCubit>()),
      BlocProvider(lazy: false, create: (context) => locator<GpsCubit>()),
    ],
    child: Scaffold(
      body: const SafeArea(top: false, child: CustomMap()),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_outlined),
      ),
    ),
  );
}
