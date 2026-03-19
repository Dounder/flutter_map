import 'package:flutter/material.dart';

enum ButtonVariant { primary, success, danger, info, warn }

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final ButtonVariant variant;
  final Widget? child;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.text = '',
    this.variant = ButtonVariant.primary,
    this.child,
  });

  Color _getBackgroundColor(ColorScheme colors) {
    switch (variant) {
      case ButtonVariant.success:
        return const Color(0xFF0C3814); // Dark green
      case ButtonVariant.danger:
        return colors.error;
      case ButtonVariant.info:
        return const Color(0xFF1976D2); // Standard blue
      case ButtonVariant.warn:
        return const Color(0xFFF57C00); // Standard orange
      case ButtonVariant.primary:
        return colors.primary;
    }
  }

  Color _getForegroundColor(ColorScheme colors) {
    switch (variant) {
      case ButtonVariant.success:
        return Colors.white;
      case ButtonVariant.danger:
        return colors.onError;
      case ButtonVariant.info:
      case ButtonVariant.warn:
        return Colors.white;
      case ButtonVariant.primary:
        return colors.onPrimary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final backgroundColor = _getBackgroundColor(colors);
    final foregroundColor = _getForegroundColor(colors);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: child ?? Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
