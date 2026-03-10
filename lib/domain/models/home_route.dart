import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_route.freezed.dart';

@freezed
abstract class HomeRoute with _$HomeRoute {
  const HomeRoute._();

  const factory HomeRoute({
    required String title,
    String? subtitle,
    required IconData icon,
    required String routeName,
  }) = _HomeRoute;
}
