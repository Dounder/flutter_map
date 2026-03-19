import 'package:flutter/material.dart';
import 'package:map_test/presentation/widgets/custom_button.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final ButtonVariant variant;
  final Widget? child;

  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    this.text = '',
    this.variant = ButtonVariant.primary,
    this.child,
  });

  Color _getColor(ColorScheme colors) {
    switch (variant) {
      case ButtonVariant.success:
        return const Color(0xFF2E8B57); // Green matching trace
      case ButtonVariant.danger:
        return colors.error;
      case ButtonVariant.info:
        return const Color(0xFF1976D2);
      case ButtonVariant.warn:
        return const Color(0xFFF57C00);
      case ButtonVariant.primary:
        return colors.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final color = _getColor(colors);

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: color,
        side: BorderSide(color: color),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: child ?? Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
