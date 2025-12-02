import 'dart:math';

import 'package:flutter/material.dart';

class SpeedoMeterPainter extends CustomPainter {
  final double value;

  SpeedoMeterPainter({required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * 0.90);
    final radius = size.width * 0.40; // small size like screenshot

    final bgPaint = Paint()
      ..color = Colors.white.withOpacity(0.25)
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final valuePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Background arc (light)
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi,
      false,
      bgPaint,
    );

    // Value arc (white)
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi * value,
      false,
      valuePaint,
    );

    // Needle
    final angle = pi + (pi * value);
    final needleEnd = Offset(
      center.dx + radius * 0.65 * cos(angle),
      center.dy + radius * 0.65 * sin(angle),
    );

    final needlePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;


    canvas.drawLine(center, needleEnd, needlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
