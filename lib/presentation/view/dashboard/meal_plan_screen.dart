import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import '../../../foundation/theme/colors.dart';
import '../../widgets/custom/custom_painter_meal_plan.dart';
final injector = GetIt.instance;

@RoutePage()
class MealPlanScreen extends StatefulWidget {
  const MealPlanScreen({super.key});

  @override
  State<MealPlanScreen> createState() => _MealPlanScreenState();
}

class _MealPlanScreenState extends State<MealPlanScreen> {
  final AppColors appColors = injector<AppColors>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double w(double px) => size.width * (px / 390);
    double h(double px) => size.height * (px / 844);
    double sp(double px) => (size.width / 390) * px;

    return Scaffold(
      backgroundColor: appColors.black,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: w(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: h(20)),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Today's, ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: sp(30),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "Meal Plan",
                          style: TextStyle(
                            color: appColors.darkGreen,
                            fontSize: sp(30),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h(6)),
                  Text(
                    "Your daily guide to balanced nutrition.",
                    style: TextStyle(
                      color: appColors.primaryWhite,
                      fontSize: sp(17),
                    ),
                  ),

                  SizedBox(height: h(20)),

                  _buildTotalCaloriesCard(w, h, sp),
                  // buildTotalCaloriesCard(w,h,sp),
                  SizedBox(height: h(26)),

                  _mealCard(
                    w: w,
                    h: h,
                    sp: sp,
                    kcal: "481 Kcal",
                    mealType: "BREAKFAST",
                    title: "Almond and Banana Toast",
                    time: "Under 15 mins",
                    servings: "2 servings 18g Prot • 59g Carbs • 21g Fat",
                    img:
                    "assets/images/breakfast_img.png",
                  ),

                  SizedBox(height: h(8)),

                  _mealCard(
                    w: w,
                    h: h,
                    sp: sp,
                    kcal: "481 Kcal",
                    mealType: "LUNCH",
                    title: "Almond and Banana Toast",
                    time: "Under 15 mins",
                    servings: "2 servings 18g Prot • 59g Carbs • 21g Fat",
                    img:
                    "assets/images/lunch_img.png",
                  ),

                  SizedBox(height: h(30)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTotalCaloriesCard(
      double Function(double) w, double Function(double) h, double Function(double) sp) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(w(16)),
      decoration: BoxDecoration(
        color: appColors.dashContainerColor,
        borderRadius: BorderRadius.circular(w(12)),
        border: Border.all(color: appColors.primaryWhite),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Calories",
            style: TextStyle(
              color: appColors.primaryWhite,
              fontWeight: FontWeight.w700,
              fontSize: sp(14),
            ),
          ),
         Divider(),

          _macroProgress(label: "Protein", value: 0.5, color: Colors.blue, w: w, h: h, sp: sp),
          SizedBox(height: h(10)),
          _macroProgress(label: "Carbs", value: 0.3, color: Colors.yellow, w: w, h: h, sp: sp),
          SizedBox(height: h(10)),
          _macroProgress(label: "Fat", value: 0.4, color: Colors.redAccent.shade200, w: w, h: h, sp: sp),

          SizedBox(height: h(16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _tag("Water Intake 💧", sp),
                  SizedBox(height: h(12)),
                  _tag("Heart Rate   ❤️", sp),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: CustomPaint(
                      painter: StepsPainter(),
                      child: SizedBox(
                        width: w(120),
                        height: w(120),
                        child: Center(
                          child: Text(
                            "3,500 Steps",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sp(13),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: h(4)),
          Text(
            "More values →",
            style: TextStyle(
              color: appColors.green,
              fontSize: sp(13.81),
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }


  Widget _macroProgress({
    required String label,
    required double value,
    required Color color,
    required double Function(double) w,
    required double Function(double) h,
    required double Function(double) sp,
  }) {
    return Row(
      children: [
        Icon(Icons.circle, color: color, size: sp(10)),
        SizedBox(width: w(6)),
        SizedBox(
          width: w(70),
          child: Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: sp(13)),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: value,
              color: color,
              backgroundColor: Colors.white24,
              minHeight: h(6),
            ),
          ),
        ),
      ],
    );
  }

  Widget _healthTag({
    required String title,
    required String value,
    required String asset,
    required double Function(double) w,
    required double Function(double) h,
    required double Function(double) sp,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w(12), vertical: h(10)),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(w(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: sp(13),
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Image.asset(asset, width: w(28), height: w(28)),
              SizedBox(width: w(6)),
              Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sp(12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }



  Widget _tag(String text, double Function(double) sp) {
    return Container(
      width: 122,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: appColors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(color: appColors.primaryWhite, fontSize: sp(12), fontWeight: FontWeight.w500, fontFamily: FontFamily.inter),
      ),
    );
  }


  Widget _mealCard({
    required double Function(double) w,
    required double Function(double) h,
    required double Function(double) sp,
    required String kcal,
    required String mealType,
    required String title,
    required String time,
    required String servings,
    required String img,
  }) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [

          Container(
            margin: EdgeInsets.only(top: h(70)), // space for overlapping image
            decoration: BoxDecoration(
              color: appColors.grey,
              borderRadius: BorderRadius.circular(w(16)),
              border: Border.all(color: appColors.primaryWhite),
            ),
            child: Padding(
              padding: EdgeInsets.all(w(14)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: h(50)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kcal,
                        style: TextStyle(
                          color: appColors.darkGreen,
                          fontSize: sp(14),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.cloud_outlined, color: appColors.darkGreenNew),
                          SizedBox(width: 4),
                          Icon(Icons.star_outline, color: appColors.primaryWhite),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: h(20)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        mealType,
                        style: TextStyle(
                          color: appColors.primaryWhite,
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.w700,
                          fontSize: sp(20),
                        ),
                      ),
                      Row(
                        children: [
                          _iconButton(
                              Icons.swap_vertical_circle_outlined, w, sp, "Swap"),
                          SizedBox(width: w(8)),
                          _iconButton(Icons.copy_outlined, w, sp, "Copy"),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.av_timer_outlined,
                          size: sp(14), color: appColors.textGrey),
                      SizedBox(width: w(4)),
                      Text(
                        time,
                        style: TextStyle(
                          color: appColors.primaryWhite,
                          fontSize: sp(13),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: h(8)),

                  Text(
                    title,
                    style: TextStyle(
                      color: appColors.primaryWhite,
                      fontFamily: FontFamily.inter,
                      fontSize: sp(20),
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox(height: h(5)),

                  Text(
                    servings,
                    style: TextStyle(
                      color: appColors.primaryWhite,
                      fontSize: sp(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(height: h(10)),
                  Row(
                    children: [
                      Icon(Icons.task, color: appColors.green, size: 16),
                      SizedBox(width: 4),
                      Text(
                        "Ingredients",
                        style: TextStyle(
                          color: appColors.green,
                          fontSize: sp(14),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// OVERLAPPING IMAGE — EXACT SAME LOOK
          Positioned(
            top: 0,
            left: w(30),
            right: w(30),
            child: Container(
              height: h(120),
              width: 170,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: ClipOval(
                child: Image.asset(
                  img,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }


  Widget _iconButton(IconData icon, double Function(double) w, double Function(double) sp, String text) {
    return Container(
      padding: EdgeInsets.all((8)),
      decoration: BoxDecoration(
        color: appColors.primaryWhite,
        borderRadius: BorderRadius.circular(w(8)),
      ),
      child: Row(
        children: [
          Icon(icon, color: appColors.green, size: sp(16)),
          SizedBox(width: 4),
          Text(text, style: TextStyle(fontWeight: FontWeight.w500, fontFamily: FontFamily.inter, color: appColors.green, fontSize: 10),)

        ],
      ),
    );
  }
}



