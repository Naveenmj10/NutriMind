import 'package:flutter/material.dart';

class CommonIconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final double radius;
  final Color iconColor;
  final Color bgColor;

  const CommonIconWidget({
    super.key,
    required this.icon,
    this.size = 20,
    this.radius = 20,
    this.iconColor = Colors.white,
    this.bgColor = Colors.white10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.18),
      ),
      child: Center(child: Icon(icon, color: iconColor, size: size)),
    );
  }
}
