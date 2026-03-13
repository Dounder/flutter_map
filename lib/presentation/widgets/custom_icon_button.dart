import 'package:flutter/material.dart';

enum IconButtonVariant { filledTonal, filled, outline, base }

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final IconButtonVariant variant;
  final String? tooltip;
  final bool enabled;

  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.variant = IconButtonVariant.filledTonal,
    this.tooltip,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final action = enabled ? onPressed : null;
    final iconWidget = Icon(icon);

    return switch (variant) {
      IconButtonVariant.filledTonal => IconButton.filledTonal(onPressed: action, icon: iconWidget, tooltip: tooltip),
      IconButtonVariant.filled => IconButton.filled(onPressed: action, icon: iconWidget, tooltip: tooltip),
      IconButtonVariant.outline => IconButton.outlined(onPressed: action, icon: iconWidget, tooltip: tooltip),
      IconButtonVariant.base => IconButton(onPressed: action, icon: iconWidget, tooltip: tooltip),
    };
  }
}
