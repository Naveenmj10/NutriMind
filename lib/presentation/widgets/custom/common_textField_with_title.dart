import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/assets/assets.gen.dart';
import '../../../foundation/theme/colors.dart';

class CommonTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isValid;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;

  const CommonTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.focusNode,
    required this.isValid,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),

        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isValid ? appColors.lightGreen : Colors.transparent,
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  focusNode: focusNode,
                  obscureText: isPassword ? obscureText : false,
                  style: TextStyle(
                      color: appColors.lightBlue,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.inter,
                      fontSize: 20
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: appColors.lightBlue,
                      fontFamily: FontFamily.inter,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              // password toggle
              if (isPassword)
                GestureDetector(
                  onTap: onToggleVisibility,
                  child: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: appColors.lightBlue.withOpacity(0.7),
                  ),
                ),

              // tick icon
              if (!isPassword && controller.text.isNotEmpty && isValid)
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Image.asset(Assets.images.icnTick.path),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
