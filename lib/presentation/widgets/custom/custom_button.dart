import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;
  final double radius;
  final EdgeInsets padding;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
    this.borderWidth = 2,
    this.radius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        padding: padding,
        side: BorderSide(color: borderColor, width: borderWidth),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        elevation: 4,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
