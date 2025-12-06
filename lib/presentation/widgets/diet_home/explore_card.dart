import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/theme/colors.dart';

class ExploreCard extends StatelessWidget {
  ExploreCard({super.key});
  final AppColors appColors = injector<AppColors>();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF232220),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Color(0xff2F2F2F),
          width: 1.5
      )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore Diet Plans",
            style: TextStyle(
              fontFamily: "Inter",
              color: appColors.primaryWhite,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Personalized plans to match\nyour goals and lifestyle.",
            style: TextStyle(
              fontFamily: "Inter",
              color: appColors.primaryWhite,
              fontSize: 17,
              fontWeight: FontWeight.w400
            ),
          ),
        ],
      ),
    );
  }
}
