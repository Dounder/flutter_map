import 'package:flutter/material.dart';

class MapCrosshair extends StatelessWidget {
  final double size;

  const MapCrosshair({super.key, this.size = 25});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    final child = Center(
      child: CustomPaint(size: Size(size, size), painter: _CrosshairPainter(color)),
    );

    return IgnorePointer(child: child);
  }
}

class _CrosshairPainter extends CustomPainter {
  final Color color;

  const _CrosshairPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    const double designSize = 12.0;
    final double scale = (size.width / designSize).clamp(0.0, double.infinity);

    final borderPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0 * scale;

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Outer rect in design coordinates: from (0.5,0.5) size 11x11, radius 1.5
    final outer = Rect.fromLTWH(0.5 * scale, 0.5 * scale, 11 * scale, 11 * scale);
    final outerR = RRect.fromRectAndRadius(outer, Radius.circular(1.5 * scale));
    canvas.drawRRect(outerR, borderPaint);

    // Inner rect in design coordinates: from (4,4) size 4x4, radius 1
    final inner = Rect.fromLTWH(4 * scale, 4 * scale, 4 * scale, 4 * scale);
    final innerR = RRect.fromRectAndRadius(inner, Radius.circular(1.0 * scale));
    canvas.drawRRect(innerR, fillPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
