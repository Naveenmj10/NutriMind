import 'dart:math';

import 'package:flutter/material.dart';

class StepsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 4;
    double radius = size.width / 2;
    List<Color> colors = [
      Color(0xFF2D7BFF), // Blue
      Color(0xFFF5C63A), // Yellow
      Color(0xFFE54354), // Red
      Color(0xFF2D7BFF), // Blue
      Color(0xFFF5C63A), // Yellow
    ];

    double gapRadians = 0.07;
    double totalRadians = (2 * pi) - (gapRadians * colors.length);
    double sweep = totalRadians / colors.length;

    for (int i = 0; i < colors.length; i++) {
      Paint paint = Paint()
        ..color = colors[i]
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

      double start = (sweep + gapRadians) * i - pi / 2;

      canvas.drawArc(
        Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
        start,
        sweep,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}