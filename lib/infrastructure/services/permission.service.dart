import 'package:flutter/material.dart';
import 'package:map_test/domain/domain.dart';

abstract class PermissionService {
  Future<bool> requestPermission({required BuildContext context, required PermissionType type});
  Future<bool> checkPermissionStatus(PermissionType type);
}
