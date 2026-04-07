import 'package:flutter/material.dart';
import 'package:map_test/presentation/widgets/ui/sliver_header_delegate.dart';

class SliverHeader extends StatelessWidget {
  final double minHeight;
  final double maxHeight;
  final Widget Function(BuildContext context, double shrinkOffset, bool overlapsContent) builder;

  final bool floating;
  final bool pinned;

  const SliverHeader({
    super.key,
    required this.minHeight,
    required this.maxHeight,
    required this.builder,
    this.floating = false,
    this.pinned = false,
  });

  @override
  Widget build(BuildContext context) => SliverPersistentHeader(
    floating: floating,
    pinned: pinned,
    delegate: SliverHeaderDelegate(minHeight: minHeight, maxHeight: maxHeight, builder: builder),
  );
}
