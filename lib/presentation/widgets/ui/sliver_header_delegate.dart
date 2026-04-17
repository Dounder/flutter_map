import 'package:flutter/material.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget Function(BuildContext context, double shrinkOffset, bool overlapsContent) builder;

  SliverHeaderDelegate({required this.minHeight, required this.maxHeight, required this.builder});

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) =>
      builder(context, shrinkOffset, overlapsContent);

  @override
  bool shouldRebuild(covariant SliverHeaderDelegate oldDelegate) =>
      minHeight != oldDelegate.minHeight || maxHeight != oldDelegate.maxHeight || builder != oldDelegate.builder;
}
