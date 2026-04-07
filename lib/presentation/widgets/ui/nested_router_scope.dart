import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NestedRouterScope extends InheritedWidget {
  final GoRouter parentRouter;

  const NestedRouterScope({super.key, required this.parentRouter, required super.child});

  static NestedRouterScope of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<NestedRouterScope>()!;

  @override
  bool updateShouldNotify(NestedRouterScope old) => old.parentRouter != parentRouter;
}
