import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/core/core.dart';
import 'package:map_test/presentation/presentation.dart';

class MapScreen extends StatelessWidget {
  static const name = 'map_screen';

  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(lazy: false, create: (context) => locator<MapCubit>()),
      BlocProvider(lazy: false, create: (context) => locator<GpsCubit>()),
    ],
    child: const _View(),
  );
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) => BlocListener<MapCubit, MapState>(
    listener: (context, state) {
      if (state.hasError) context.showError(state.errorMessage!);
      if (state.hasWarn) context.showWarning(state.warnMessage!);
      context.read<MapCubit>().clearMessages();
    },
    child: Scaffold(
      body: Stack(
        children: [
          const CustomMap(showCrosshair: true),
          Positioned(bottom: 10, right: 10, child: SafeArea(child: _buildMapActions(context))),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_outlined),
      ),
    ),
  );

  Widget _buildMapActions(BuildContext context) => BlocBuilder<MapCubit, MapState>(
    builder: (context, state) {
      final mapReady = state.mapReady;

      return Column(
        spacing: 10,
        children: [
          FloatingActionButton(
            heroTag: 'center_camera',
            onPressed: mapReady ? context.read<MapCubit>().centerCamera : null,
            tooltip: 'Center camera',
            child: const Icon(Icons.center_focus_strong),
          ),
          FloatingActionButton(
            heroTag: 'add_point',
            onPressed: mapReady ? context.read<MapCubit>().addPoint : null,
            tooltip: 'Add point',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'remove_point',
            onPressed: mapReady ? context.read<MapCubit>().removeLastPoint : null,
            tooltip: 'Remove last point',
            child: const Icon(Icons.remove),
          ),
        ],
      );
    },
  );
}
