import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:map_test/data/data.dart';
import 'package:map_test/domain/domain.dart';
import 'package:map_test/infrastructure/infrastructure.dart';
import 'package:map_test/presentation/presentation.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionServiceImpl implements PermissionService {
  final Logger _logger;

  PermissionServiceImpl({required Logger logger}) : _logger = logger;

  @override
  Future<bool> requestPermission({required BuildContext context, required PermissionType type}) async {
    final config = PermissionData.getPermissionConfig(type);
    _logger.d(config.toString());

    // sheet returns a nullable bool; default to false if dismissed.
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      builder: (context) => PermissionView(
        config: config,
        onAllow: () async {
          final granted = await _handleGrantedPermission(context, config);
          if (context.mounted) context.pop(granted);
        },
        // TODO: Implement a retry mechanism or guide the user to settings if they deny the permission.
        onDeny: () => context.pop(false),
      ),
    );

    return result ?? false;
  }

  @override
  Future<bool> checkPermissionStatus(PermissionType type) async {
    final config = PermissionData.getPermissionConfig(type);
    final status = await config.permission.status;
    _logger.d('Checked permission status for ${config.type}: $status');
    return status.isGranted;
  }

  Future<bool> _handleGrantedPermission(BuildContext context, PermissionConfig config) async {
    _logger.d('Permission granted: ${config.type}');
    final status = await config.permission.request();

    if (!context.mounted) return false;

    if (status.isPermanentlyDenied) {
      _logger.d('Permission permanently denied: ${config.type}');
      await _showSettingsDialog(context, config);
      return false;
    }

    if (!status.isGranted) {
      _logger.d('Permission denied after request: ${config.type}');
      return false;
    }

    _logger.d('Permission successfully granted: ${config.type}');
    return true;
  }

  Future<void> _showSettingsDialog(BuildContext context, PermissionConfig config) async {
    await showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Permission denied'),
        content: Text(
          '${config.type.name} permission is required for this feature. Please enable it in the app settings.',
        ),
        actions: [
          TextButton(onPressed: () => dialogContext.pop(), child: const Text('cancel')),
          TextButton(
            onPressed: () {
              dialogContext.pop();
              openAppSettings();
            },
            child: const Text('Go to Settings'),
          ),
        ],
      ),
    );
  }
}
