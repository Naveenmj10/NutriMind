import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/theme/colors.dart';

class DietCard extends StatelessWidget {
  final String title;
  final String image;

   DietCard({
    super.key,
    required this.title,
    required this.image,
  });
  final AppColors appColors = injector<AppColors>();
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Image.asset(
                image,
                width: double.infinity,
                height: h * 0.30,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: appColors.backgroundContainerColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: appColors.primaryWhite, width: 2),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _singleTag("assets/images/blinkit_img.png"),
                      const SizedBox(width: 4),
                      _singleTag("assets/images/zomato_img.png"),
                      const SizedBox(width: 4),
                      _singleTag("assets/images/youtube_img.png"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),


        SizedBox(height: h * 0.01),

        Text(
          title,
          style: TextStyle(
            color: appColors.primaryWhite,
            fontFamily: "Inter",
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "2,000 kcal",
              style: TextStyle(
                color: appColors.primaryWhite,
                fontFamily: "Inter",
                fontSize: 13,
              ),
            ),
            Text(
              "Protein: 120g",
              style: TextStyle(
                color: appColors.primaryWhite,
                fontFamily: "Inter",
                fontSize: 13,
              ),
            ),
            Text(
              "Carbs: 200g",
              style: TextStyle(
                color: appColors.primaryWhite,
                fontFamily: "Inter",
                fontSize: 13,
              ),
            ),
            Text(
              "Fat: 70g",
              style: TextStyle(
                color: appColors.primaryWhite,
                fontFamily: "Inter",
                fontSize: 13,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _singleTag(String img) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF083A2F),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: appColors.stepsColor, width: 2),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              // shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8)
            ),
              child: Image.asset(img, height: 20)),

          const SizedBox(width: 4),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: appColors.stepsColor, width: 1.5),
              borderRadius: BorderRadius.circular(6),
            ),
            child:  Icon(
              Icons.north_east,
              size: 16,
              color: appColors.primaryWhite,
            ),
          )
        ],
      ),
    );
  }


}
