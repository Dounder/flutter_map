import 'package:flutter/material.dart';
import 'package:flutter_placeholder/domain/domain.dart';

class PermissionData {
  static PermissionConfig getPermissionConfig(PermissionType type) => switch (type) {
    PermissionType.location => location,
  };

  static const PermissionConfig location = PermissionConfig(
    id: 'location',
    title: 'Location Access',
    description: 'Allow access to your location to provide location-based services.',
    icon: Icon(Icons.location_on_rounded, size: 48),
    type: PermissionType.location,
  );
}
