import 'package:flutter/material.dart';

class DragHandle extends StatelessWidget {
  const DragHandle({super.key});

  @override
  Widget build(BuildContext context) => Container(
    width: 40,
    height: 4,
    margin: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(color: Theme.of(context).colorScheme.outline, borderRadius: BorderRadius.circular(2)),
  );
}
