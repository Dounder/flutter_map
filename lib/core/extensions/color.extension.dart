import 'package:flutter/material.dart';

/// Extension methods for the [Color] class.
extension ColorExtension on Color {
  /// Converts the color to a hexadecimal string representation.
  ///
  /// If [includeAlpha] is true, the format will be `#AARRGGBB`.
  /// Otherwise, the format will be `#RRGGBB`. Default is false.
  String toHex({bool includeAlpha = false}) {
    final red = (r * 255).toInt().toRadixString(16).padLeft(2, '0');
    final green = (g * 255).toInt().toRadixString(16).padLeft(2, '0');
    final blue = (b * 255).toInt().toRadixString(16).padLeft(2, '0');
    final alpha = includeAlpha ? (a * 255).toInt().toRadixString(16).padLeft(2, '0') : '';

    return '#$alpha$red$green$blue';
  }

  /// Converts the color to an `rgba(...)` CSS functional notation string.
  ///
  /// The [alpha] value parameter overrides the color's actual opacity.
  /// By default, [alpha] is `1.0`. The resulting string format is `rgba(r, g, b, alpha)`.
  String toRgba({double alpha = 1.0}) {
    final red = (r * 255).toInt();
    final green = (g * 255).toInt();
    final blue = (b * 255).toInt();
    return 'rgba($red, $green, $blue, $alpha)';
  }
}
