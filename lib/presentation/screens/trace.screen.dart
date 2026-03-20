import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/core/core.dart';
import 'package:map_test/presentation/presentation.dart';

class TraceScreen extends StatelessWidget {
  static const name = 'trace_screen';

  const TraceScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(lazy: false, create: (context) => locator<MapCubit>()),
      BlocProvider(lazy: false, create: (context) => locator<GpsCubit>()),
    ],
    child: BlocListener<MapCubit, MapState>(
      listener: (context, state) {
        if (state.hasError) context.showError(state.errorMessage!);
        if (state.hasWarn) context.showWarning(state.warnMessage!);
        context.read<MapCubit>().clearMessages();
      },
      child: const _View(),
    ),
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
          const CustomMap(padding: EdgeInsets.only(bottom: 2000), startTracking: true, dottedLine: true),
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
    builder: (context, state) => Column(
      spacing: 10,
      children: [
        BlocBuilder<MapCubit, MapState>(
          buildWhen: (previous, current) => previous.isFollowing != current.isFollowing,
          builder: (context, state) {
            final colors = Theme.of(context).colorScheme;
            return FloatingActionButton(
              heroTag: 'trace_fab',
              onPressed: () {
                context.read<MapCubit>().toggleFollowing();
                if (!state.isFollowing) context.read<MapCubit>().centerCamera();
              },
              backgroundColor: state.isFollowing ? colors.primary : colors.surface,
              foregroundColor: state.isFollowing ? colors.onPrimary : colors.primary,
              child: Icon(state.isFollowing ? Icons.directions_run : Icons.directions_walk),
            );
          },
        ),
      ],
    ),
  );
}
