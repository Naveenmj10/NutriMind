import 'package:flutter/cupertino.dart';

import '../../../foundation/assets/fonts.gen.dart';
import '../../../foundation/theme/colors.dart';

class MealMacrosWidget extends StatelessWidget {
  final String icon;
  final Color iconColor;
  final String label;
  final String value;
  final AppColors appColors;

  const MealMacrosWidget({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
    required this.appColors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon,
          height: 30,
          width: 30,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontFamily: FontFamily.inter,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: appColors.borderGrey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontFamily: FontFamily.inter,
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: appColors.teal,
          ),
        ),
      ],
    );
  }
}
