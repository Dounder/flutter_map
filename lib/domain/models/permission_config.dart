import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_config.freezed.dart';

enum PermissionType {
  location;

  String get name => switch (this) {
    PermissionType.location => 'Location',
  };
}

@freezed
abstract class PermissionConfig with _$PermissionConfig {
  const PermissionConfig._();

  const factory PermissionConfig({
    required String id,
    required String title,
    required String description,
    Widget? icon,
    required PermissionType type,
  }) = _PermissionConfig;

  Permission get permission => switch (type) {
    PermissionType.location => Permission.location,
  };

  @override
  String toString() => 'PermissionConfig(id: $id, title: $title, type: $type)';
}
