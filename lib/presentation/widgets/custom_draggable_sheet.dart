import 'package:flutter/material.dart';
import 'package:map_test/core/core.dart';

class CustomDraggableSheet extends StatefulWidget {
  final Widget Function(BuildContext context, ScrollController controller) builder;
  final double initialChildSize;
  final List<double> snapSizes;
  final DraggableScrollableController? controller;

  const CustomDraggableSheet({
    super.key,
    required this.builder,
    this.initialChildSize = 0.5,
    this.snapSizes = const [0.1, 0.5, 1],
    this.controller,
  });

  @override
  State<CustomDraggableSheet> createState() => _CustomDraggableSheetState();
}

class _CustomDraggableSheetState extends State<CustomDraggableSheet> {
  final _sheetController = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    assert(widget.snapSizes.isNotEmpty, 'snapSizes cannot be empty');
    assert(widget.snapSizes.isSorted(), 'snapSizes must be sorted');
    assert(
      widget.initialChildSize >= widget.snapSizes.first && widget.initialChildSize <= widget.snapSizes.last,
      'initialChildSize must be between the snap sizes',
    );

    return DraggableScrollableSheet(
      controller: widget.controller ?? _sheetController,
      initialChildSize: widget.initialChildSize,
      minChildSize: widget.snapSizes.first,
      snap: true,
      snapSizes: widget.snapSizes,
      maxChildSize: widget.snapSizes.last,
      builder: (context, scrollController) => ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: widget.builder(context, scrollController),
        ),
      ),
    );
  }
}
