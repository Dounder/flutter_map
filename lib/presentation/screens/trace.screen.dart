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
          const CustomMap(
            padding: EdgeInsets.only(bottom: 2000), // padding to handle the card logic from MapBox
            startTracking: true,
            dottedLine: true,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [_buildFollowingFab(context), const SizedBox(height: 16), _buildBottomCard(context)],
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildFollowingFab(BuildContext context) => BlocBuilder<MapCubit, MapState>(
    buildWhen: (previous, current) => previous.isFollowing != current.isFollowing,
    builder: (context, state) {
      final colors = Theme.of(context).colorScheme;
      return FloatingActionButton(
        heroTag: 'trace_fab',
        onPressed: () => context.read<MapCubit>().toggleFollowing(),
        backgroundColor: state.isFollowing ? colors.primary : colors.surface,
        foregroundColor: state.isFollowing ? colors.onPrimary : colors.primary,
        child: Icon(state.isFollowing ? Icons.directions_run : Icons.directions_walk),
      );
    },
  );

  Widget _buildBottomCard(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MapMeasures(area: 0.5, perimeter: 100),
          const SizedBox(height: 24),
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  onPressed: () => context.pop(),
                  text: 'Cancelar',
                  variant: ButtonVariant.danger,
                ),
              ),
              Expanded(
                child: CustomButton(onPressed: () {}, text: 'Continuar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
