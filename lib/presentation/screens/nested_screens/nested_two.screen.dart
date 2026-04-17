import 'package:flutter/material.dart';
import 'package:map_test/presentation/widgets/custom_draggable_sheet.dart';

class NestedTwoScreen extends StatelessWidget {
  static const name = 'nested_two_screen';

  const NestedTwoScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    body: CustomDraggableSheet(
      builder: (context, scrollController) => CustomScrollView(
        controller: scrollController,
        slivers: [
          const SliverAppBar(
            collapsedHeight: 50,
            expandedHeight: 50,
            toolbarHeight: 50,
            title: Text('Nested Two'),
            floating: true,
            snap: true,
          ),

          SliverList.separated(
            itemCount: 100,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
          ),
        ],
      ),
    ),
  );
}
