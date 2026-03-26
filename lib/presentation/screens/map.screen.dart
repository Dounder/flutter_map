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
          const CustomMap(showCrosshair: true, showUserLocation: true),
          Positioned(
            bottom: 0,
            right: 20,
            left: 20,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [_buildMapActions(context), _buildMapMeasures(context)],
              ),
            ),
          ),
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
      final isDownloading = context.select((DownloadManagerCubit cubit) => cubit.state.isDownloading);

      return Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
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
          FloatingActionButton(
            heroTag: 'download_map',
            onPressed: mapReady && !isDownloading
                ? () => context.read<DownloadManagerCubit>().startDownload(
                    regionName: DateTime.now().toIso8601String(),
                    context: context,
                    points: state.points.toList(),
                  )
                : null,
            tooltip: 'Download map',
            child: BlocBuilder<DownloadManagerCubit, DownloadManagerState>(
              builder: (context, state) {
                if (!state.isDownloading) return const Icon(Icons.download);
                final totalProgress = (state.stylePackProgress + state.tileRegionProgress) / 2;
                return CircularProgressIndicator(value: totalProgress, strokeWidth: 4);
              },
            ),
          ),
        ],
      );
    },
  );

  Widget _buildMapMeasures(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
      ),
      child: BlocBuilder<MapCubit, MapState>(builder: (context, state) => MapMeasures(info: state.info)),
    );
  }
}
