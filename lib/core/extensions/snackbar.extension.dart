import 'package:flutter/material.dart';

extension SnackbarExtension on BuildContext {
  Color get _successColor => Colors.green;
  Color get _errorColor => Colors.red.shade900;
  Color get _infoColor => Colors.lightBlue;
  Color get _warningColor => Colors.orange;

  // Core message display function
  void _showMessage({
    required String message,
    required Color backgroundColor,
    required IconData icon,
    Duration duration = const Duration(seconds: 2),
  }) {
    if (message.isEmpty) return;

    // Dismiss any existing snackbars
    ScaffoldMessenger.of(this).hideCurrentSnackBar();

    // Create the snackbar
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(message, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: duration,
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  // Show success message
  void showSuccess(String message, {Duration duration = const Duration(seconds: 2)}) => _showMessage(
    message: message,
    backgroundColor: _successColor,
    icon: Icons.check_circle_outline,
    duration: duration,
  );

  // Show error message
  void showError(String message, {Duration duration = const Duration(seconds: 3)}) =>
      _showMessage(message: message, backgroundColor: _errorColor, icon: Icons.error_outline, duration: duration);

  // Show information message
  void showInfo(String message, {Duration duration = const Duration(seconds: 2)}) =>
      _showMessage(message: message, backgroundColor: _infoColor, icon: Icons.info_outline, duration: duration);

  // Show warning message
  void showWarning(String message, {Duration duration = const Duration(seconds: 3)}) => _showMessage(
    message: message,
    backgroundColor: _warningColor,
    icon: Icons.warning_amber_rounded,
    duration: duration,
  );
}
