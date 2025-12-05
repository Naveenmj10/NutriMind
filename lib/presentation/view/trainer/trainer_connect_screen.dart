import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../data/model/workout_model.dart';
import '../../../foundation/theme/colors.dart';
import '../../widgets/custom/workout_Card.dart';

class TrainerConnectScreen extends StatefulWidget {
  TrainerConnectScreen({super.key});

  @override
  State<TrainerConnectScreen> createState() => _TrainerConnectScreenState();
}

class _TrainerConnectScreenState extends State<TrainerConnectScreen> {
  final List<WorkoutModel> items = [
    WorkoutModel(
      day: "Day 1",
      title: "One-Legged King Pigeon...",
      time: "15 Minutes",
      calories: "500 calories Burned",
      description: "Do you love yoga, but you're not...",
      img: "assets/images/yoga_img.png",
    ),
    WorkoutModel(
      day: "Day 2",
      title: "One-Legged King Pigeon...",
      time: "15 Minutes",
      calories: "500 calories Burned",
      description: "Do you love yoga, but you're not...",
      img: "assets/images/yoga_img.png",
    ),

  ];
  final AppColors appColors = injector<AppColors>();
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: appColors.black,
      appBar: AppBar(
        backgroundColor: appColors.black,
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
                // color: appColors.hintColor,
          ),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_rounded, color: appColors.primaryWhite, size: 13,))),
        title: Text(
          "Trainer Connect",
          style: TextStyle(fontSize:16, fontWeight: FontWeight.w700, color: appColors.primaryWhite),
        ),
      ),

      body: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.symmetric(
                horizontal: w * 0.04, vertical: h * 0.01),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return WorkoutCard(data: items[index],);
            },
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              decoration: BoxDecoration(
                color: Color(0xFF393939),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: appColors.primaryWhite  , width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add, color:appColors.primaryWhite, size: 28),
                      SizedBox(width: 10),
                      Text(
                        "Plan now",
                        style: TextStyle(
                          fontSize: 16,
                          color: appColors.primaryWhite,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  Icon(
                    Icons.mic,
                    color: Colors.grey.shade300,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      )


    //   bottomNavigationBar: Container(
    //     padding: EdgeInsets.all(w * 0.04),
    //     color: Colors.black,
    //     child: Container(
    //       padding: EdgeInsets.symmetric(vertical: h * 0.015),
    //       decoration: BoxDecoration(
    //         color: Color(0xFF2B2B2B),
    //         borderRadius: BorderRadius.circular(30),
    //       ),
    //       child: Center(
    //         child: Text(
    //           "+ Plan now",
    //           style: TextStyle(
    //             color: appColors.primaryWhite,
    //             fontSize: w * 0.045,
    //             fontWeight: FontWeight.w600,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    );
  }
}
