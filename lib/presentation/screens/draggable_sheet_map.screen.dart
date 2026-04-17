import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:map_test/config/config.dart';
import 'package:map_test/presentation/presentation.dart';

class DraggableSheetMapScreen extends StatelessWidget {
  static const name = 'draggable_sheet_map_screen';

  const DraggableSheetMapScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => locator<GpsCubit>()),
      BlocProvider(create: (context) => locator<MapCubit>()),
    ],
    child: Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: CustomMap()),
          SizedBox(
            child: NestedRouterScope(
              parentRouter: GoRouter.of(context),
              child: Router.withConfig(config: bottomSheetMapInnerRouter),
            ),
          ),
        ],
      ),
    ),
  );
}
