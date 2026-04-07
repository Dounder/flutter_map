import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/presentation/presentation.dart';

class NestedOneScreen extends StatelessWidget {
  static const name = 'nested_one_screen';

  const NestedOneScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(children: [Positioned(bottom: 0, right: 0, left: 0, child: _buildMapMeasures(context))]),
  );

  Widget _buildMapMeasures(BuildContext context) {
    final parentRouter = NestedRouterScope.of(context).parentRouter;
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
      ),
      child: SafeArea(
        top: false,
        child: Column(
          spacing: 4,
          children: [
            const MapMeasures(info: MapInfo()),
            Row(
              children: [
                IconButton(
                  onPressed: parentRouter.pop,
                  tooltip: 'Back',
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => context.pushNamed(NestedTwoScreen.name),
                    child: const Text('Continue'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
