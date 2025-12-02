import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import '../../../foundation/theme/colors.dart';
final injector = GetIt.instance;

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

                  SizedBox(height: h(20)),

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

                  SizedBox(height: h(16)),

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

          SizedBox(height: h(12)),
          Column(
            children: [
              _tag("Water Intake 💧", sp),
              SizedBox(height: h(12)),
              _tag("Heart Rate   ❤️", sp),
            ],
          ),

          SizedBox(height: h(20)),

          Center(
            child: CustomPaint(
              painter: StepsPainter(appColors),
              child: SizedBox(
                width: w(140),
                height: w(140),
                child: Center(
                  child: Text(
                    "3,500 Steps",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: sp(15),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: h(8)),
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

  Widget _macroProgress({
    required String label,
    required double value,
    required Color color,
    required double Function(double) w,
    required double Function(double) h,
    required double Function(double) sp,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: h(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          /// Colored dot
          Icon(Icons.circle, color: color, size: sp(10)),

          SizedBox(width: w(8)),

          /// Label
          Text(
            label,
            style: TextStyle(
              color: appColors.primaryWhite,
              fontSize: sp(12),
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(width: w(16)),

          /// Progress bar (exact same width look)
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(w(20)),
              child: LinearProgressIndicator(
                value: value,
                color: color,
                backgroundColor: appColors.primaryWhite,
                minHeight: h(6),
              ),
            ),
          ),
        ],
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
    return Container(
      decoration: BoxDecoration(
        color: appColors.grey,
        borderRadius: BorderRadius.circular(w(16)),
        border: Border.all(color: appColors.primaryWhite),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(w(16))),
            child: Image.asset(
              img,
              height: h(160),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(w(14)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kcal,
                  style: TextStyle(
                    color: appColors.lightGreen,
                    fontSize: sp(14),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: h(4)),

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
                        _iconButton(Icons.swap_vertical_circle_outlined, w, sp, "Swap"),
                        SizedBox(width: w(8)),
                        _iconButton(Icons.copy_outlined, w, sp, "Copy"),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.av_timer_outlined, size: sp(14), color: appColors.textGrey),
                    SizedBox(width: w(4)),
                    Text(
                      time,
                      style: TextStyle(
                        color: appColors.primaryWhite,
                        fontSize: sp(13),
                        fontFamily: FontFamily.inter,
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

                SizedBox(height: h(5)),
                Text(
                  servings,
                  style: TextStyle(
                    color: appColors.primaryWhite,
                    fontSize: sp(14),
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.inter,
                  ),
                ),

                SizedBox(height: h(10)),
                Row(
                  children: [
                    Icon(Icons.task, color: appColors.green, size: 16,),
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
          )
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





class StepsPainter extends CustomPainter {
  final AppColors colors;
  StepsPainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    double stroke = 10;

    Paint c1 = Paint()
      ..color = colors.chartColor
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint c2 = Paint()
      ..color = colors.stepsColor
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint c3 = Paint()
      ..color = Colors.red
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double radius = size.width / 2;

    canvas.drawArc(Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
        -1.5, 1.5, false, c1);
    canvas.drawArc(Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
        0.0, 1.2, false, c2);
    canvas.drawArc(Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
        1.2, 0.8, false, c3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
