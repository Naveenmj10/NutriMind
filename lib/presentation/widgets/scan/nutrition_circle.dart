import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NutritionCircle extends StatelessWidget {
  final String title;
  final String value;
  final double progress; // 0 – 1
  final List<Color> colors;

  const NutritionCircle({
    super.key,
    required this.title,
    required this.value,
    required this.progress,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size(120, 120),
            painter: RingPainter(progress: progress, colors: colors),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RingPainter extends CustomPainter {
  final double progress;
  final List<Color> colors;

  RingPainter({required this.progress, required this.colors});

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 10.0;
    final radius = (size.width / 2) - strokeWidth;
    final center = Offset(size.width / 2, size.height / 2);

    final bgPaint = Paint()
      ..color = Colors.white12
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(center, radius, bgPaint);

    final rect = Rect.fromCircle(center: center, radius: radius);
    final gradient = SweepGradient(
      startAngle: -3.14 / 2,
      endAngle: (3.14 * 2 * progress) - 3.14 / 2,
      colors: colors,
    );

    final fgPaint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      rect,
      -3.14 / 2,
      3.14 * 2 * progress,
      false,
      fgPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
