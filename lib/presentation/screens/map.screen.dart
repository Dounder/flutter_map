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
          Positioned(bottom: 0, right: 10, child: SafeArea(child: _buildMapActions(context))),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_outlined),
      ),
    ),
  );

  Column _buildMapActions(BuildContext context) => Column(
    children: [
      CustomIconButton(
        onPressed: context.read<MapCubit>().removeLastPoint,
        icon: Icons.remove,
        tooltip: 'Remove last point',
      ),
      CustomIconButton(onPressed: context.read<MapCubit>().addPoint, icon: Icons.add, tooltip: 'Add point'),
      CustomIconButton(
        onPressed: context.read<MapCubit>().centerCamera,
        icon: Icons.center_focus_strong,
        tooltip: 'Center camera',
      ),
    ],
  );
}
