import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';

class CustomText extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double fontSize;
  final double? letterSpacing;
  final Color? textColor;
  const CustomText({
    super.key,
    required this.title,
    this.fontWeight,
    this.fontFamily,
    this.textColor,
    required this.fontSize,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(
        title,
        style: TextStyle(
          color: textColor ?? const Color(0xFFD1D1D6),
          fontSize: fontSize,
          fontFamily: fontFamily ?? FontFamily.inter,
          letterSpacing: letterSpacing??1.0,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
