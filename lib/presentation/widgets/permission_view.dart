import 'package:flutter/material.dart';
import 'package:flutter_placeholder/domain/domain.dart';

class PermissionView extends StatelessWidget {
  final PermissionConfig config;
  final VoidCallback onAllow;
  final VoidCallback onDeny;

  const PermissionView({super.key, required this.config, required this.onAllow, required this.onDeny});

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (config.icon != null) config.icon!,
          const SizedBox(height: 16),
          Text(config.title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(config.description, textAlign: TextAlign.center),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: onDeny, child: const Text('Deny')),
              ElevatedButton(onPressed: onAllow, child: const Text('Allow')),
            ],
          ),
        ],
      ),
    ),
  );
}
