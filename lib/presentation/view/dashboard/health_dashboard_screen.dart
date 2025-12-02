import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/assets/assets.gen.dart';
import '../../../foundation/theme/colors.dart';
import '../../widgets/custom/speedmeter_painter.dart';

import '../../widgets/custom/weight_row.dart';
import '../../widgets/custom/weight_tracking_chart.dart';

@RoutePage()
class HealthDashboardScreen extends StatefulWidget {
  const HealthDashboardScreen({super.key});

  @override
  State<HealthDashboardScreen> createState() => _HealthDashboardScreenState();
}

class _HealthDashboardScreenState extends State<HealthDashboardScreen> {
  final AppColors appColors = injector<AppColors>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello,Sunny! ",
              style: TextStyle(
                fontFamily: "Inter",
                color: appColors.primaryWhite,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),

            Text(
              "Ready To View analytics?",
              style: TextStyle(
                fontFamily: "Inter",
                color: appColors.primaryWhite,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),

            // ---------------- TOP 3 METRIC CARDS ----------------
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                stepsCard(),
                SizedBox(width: 8),
                waterCard(),
                SizedBox(width: 8),
                caloriesCard(),
              ],
            ),
            const SizedBox(height: 28),

            // ---------------- HUMAN BODY ANALYSIS BOX ----------------
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: appColors.dashContainerColor,
                borderRadius: BorderRadius.circular(22),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Today button
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Today",
                      style: TextStyle(
                          color: appColors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter"),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // HUMAN BODY IMAGE
                  Center(
                    child: Image.asset(
                      "assets/images/human.png",
                      height: h * 0.35,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:appColors.primaryWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Weight Tracking",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            IconButton(onPressed: (){},
                                icon: Icon(Icons.more_horiz_rounded, color: appColors.hintStyle1,)),
                            Container()
                          ],
                        ),
                        // const SizedBox(height: 8),
                        WeightRow(
                          title: "Start Weight",
                          value: "85 kg",
                          titleColor: appColors.hintStyle1,
                        ),
                        WeightRow(
                          title: "Current Weight",
                          value: "78 kg",
                          titleColor: appColors.hintStyle1,
                        ),
                        WeightRow(
                          title: "Weight Goal",
                          value: "65 kg",
                          titleColor: appColors.hintStyle1,
                        ),

                        const SizedBox(height: 20),

                        // Chart placeholder (you can replace with fl_chart)
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            // color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const WeightTrackingChart()
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Progress Photos",
                        style: TextStyle(
                          fontFamily: "Inter",
                          color: appColors.primaryWhite,
                          fontSize: 13,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Container(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: appColors.darkGreenNew,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontFamily: "Inter",
                              color: appColors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _progressPhoto(Assets.images.weight.path, "Jul 2024", "82 Kg"),
                        _progressPhoto(Assets.images.weight.path, "Aug 2024", "82 kg"),
                        _progressPhoto(Assets.images.weight1.path, "Sep 2024", "82 Kg"),
                      ],
                    ),
                  ),
                ],
              ),


            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // Widget rowCard(String title, String value, String sub,){
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Container(
  //         padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
  //         decoration: BoxDecoration(
  //           color: appColors.darkGreen,
  //           borderRadius: BorderRadius.circular(12)
  //         ),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(title,
  //                 style:  TextStyle(
  //                   fontFamily: "Inter",
  //                   color: appColors.primaryWhite,
  //                   fontSize: 12,
  //                 )),
  //             const SizedBox(height: 6),
  //             Text(value,
  //                 style: TextStyle(
  //                   fontFamily: "Inter",
  //                   color: appColors.primaryWhite,
  //                   fontSize: 13,
  //                   fontWeight: FontWeight.w600,
  //                 )),
  //             const SizedBox(height: 4),
  //             Text(sub,
  //                 style:  TextStyle(
  //                   fontFamily: "Inter",
  //                   color:appColors.primaryWhite,
  //                   fontSize: 9,
  //                 )),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }

  Widget stepsCard() {
    return Expanded(
      child: Container(
        width: 80,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: appColors.stepsColor, // Same Green Shade
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Steps",
              style: TextStyle(
                  color: appColors.primaryWhite, fontSize: 12, fontFamily: "Inter"),
            ),
            SizedBox(height: 6),
            Text(
              "3,500 Steps",
              style: TextStyle(
                color: appColors.primaryWhite,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 84,
              height: 10,
              child: LinearProgressIndicator(
                value: 0.4,
                backgroundColor: Colors.white24,
                color: appColors.primaryWhite,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(height: 4),
            Text(
              "50% of your goals",
              style: TextStyle(color: appColors.primaryWhite, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }


  Widget waterCard() {
    return Expanded(
      child: Container(
        width: 80,
        height: 100,
       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: appColors.orangeColor, // Orange color
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Water",
              style: TextStyle(color: appColors.primaryWhite, fontSize: 12),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    value: 0.45,
                    strokeWidth: 5,
                    backgroundColor: Colors.white24,
                    valueColor: AlwaysStoppedAnimation(appColors.primaryWhite),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("2.25",
                          style: TextStyle(
                              color: appColors.primaryWhite,
                              fontSize: 10,
                              fontWeight: FontWeight.w600)),
                      Text("Liters",
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.white70,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget caloriesCard() {
    return Expanded(
      child: Container(
        height: 100,
        width: 80,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xFF4EA7FF),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Title
            Text(
              "Calories",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: CustomPaint(
                painter: SpeedoMeterPainter(value: 0.6),
              ),
            ),

            // Bottom Text
            Text(
              "Today\nUnder",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
                height: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _progressPhoto(String img, String date, String weight) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 97,
      height: 160,
      clipBehavior: Clip.hardEdge,  // Overflow clip karega
      decoration: BoxDecoration(
        color: appColors.primaryWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,  // Important: min size only
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),  // Reduced vertical
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(  // Prevent text overflow
                  child: Text(
                    date,
                    style: TextStyle(
                      color: appColors.hintStyle1,
                      fontSize: 10,  // Slightly smaller
                      fontFamily: "Inter",
                      height: 1.2,   // Tight line height
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  weight,
                  style: TextStyle(
                    color: appColors.hintStyle1,
                    fontSize: 10,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),

          /// IMAGE SECTION - Flexible remaining space
          Expanded(  // Take remaining height
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),  // Slightly less
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }


}