import 'package:flutter/material.dart';

class WeightRow extends StatelessWidget {
  final String title;
  final String value;
  final Color? titleColor;

  const WeightRow({
    super.key,
    required this.title,
    required this.value,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: titleColor ?? Colors.grey,   // appColors.hintStyle1
              fontFamily: "Inter",
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
