import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/assets/assets.gen.dart';
import '../../../foundation/assets/fonts.gen.dart';
import '../../../foundation/theme/colors.dart';

class DietInfoWidget extends StatelessWidget {
  const DietInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = injector<AppColors>();

    return Container(
      width: double.infinity,
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            // Main Image
            Image.asset(
              Assets.images.icnDiet.path,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),

            // Left Badge - "See What's Inside"
            Positioned(
              left: -80,
              top: -10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Small Circle with "N"
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "N",
                        style: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: appColors.primaryWhite,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Badge Text
                    Text(
                      "See What's Inside\nYour plate",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: appColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Top Right Badge - Calories
            Positioned(
              right: -40,
              top: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "120",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: appColors.yellow,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "kcal Calories",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: appColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Right Badge - Water Content
            Positioned(
              right: -40,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "85%",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: appColors.sky_blue,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Water content",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        color: appColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
