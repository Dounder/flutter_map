import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MapLoader extends StatelessWidget {
  final double? height;
  final double? width;

  const MapLoader({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: colors.surface),
      child: Shimmer.fromColors(
        baseColor: colors.primary.withValues(alpha: .1),
        highlightColor: colors.primary,
        child: CustomPaint(
          size: Size.infinite,
          painter: DiamondPatternPainter(color: colors.surface),
        ),
      ),
    );
  }
}

class DiamondPatternPainter extends CustomPainter {
  final Color color;

  DiamondPatternPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    const double spacing = 80.0; // Increased spacing for bigger diamonds

    // Draw diamond pattern
    for (double x = -spacing; x < size.width + spacing; x += spacing) {
      for (double y = -spacing; y < size.height + spacing; y += spacing) {
        final path = Path();

        // Create diamond shape
        path.moveTo(x, y - spacing / 2);
        path.lineTo(x + spacing / 2, y);
        path.lineTo(x, y + spacing / 2);
        path.lineTo(x - spacing / 2, y);
        path.close();

        canvas.drawPath(path, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
