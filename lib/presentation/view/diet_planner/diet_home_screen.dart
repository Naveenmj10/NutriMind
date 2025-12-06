import 'package:flutter/material.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/assets/fonts.gen.dart';
import '../../../foundation/theme/colors.dart';
import '../../widgets/diet_home/bottom_navbar.dart';
import '../../widgets/diet_home/diet_card.dart';
import '../../widgets/diet_home/explore_card.dart';



class DietHomeScreen extends StatefulWidget {
   DietHomeScreen({super.key});

  @override
  State<DietHomeScreen> createState() => _DietHomeScreenState();
}

class _DietHomeScreenState extends State<DietHomeScreen> {
  final AppColors appColors = injector<AppColors>();
  String selectedOffer = "All Diets";

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: appColors.black,
      appBar: AppBar(
        backgroundColor: appColors.black,
        elevation: 0,
        automaticallyImplyLeading: false, // IMPORTANT

        titleSpacing: 0,

        title: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: const Color(0xFF262626),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios_new_rounded,
                      color: appColors.primaryWhite, size: 20),
                ),
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: const Color(0xFF262626),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined,
                      color: appColors.primaryWhite, size: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: w * 0.04),
            children: [
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                    color: appColors.primaryWhite,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    _offerToggle("All Diets", selectedOffer == "All Diets", () {
                      setState(() => selectedOffer = "All Diets");
                    }),
                    SizedBox(width: 10),
                    _offerToggle("My Diets", selectedOffer == "My Diets", () {
                      setState(() => selectedOffer = "My Diets");
                    }),
                  ],
                ),
              ),
              SizedBox(height: h * 0.03),
              ExploreCard(),
              SizedBox(height: h * 0.03),
              Text(
                "Diets",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: appColors.primaryWhite,
                ),
              ),
              SizedBox(height: h * 0.02),
               DietCard(
                title: "Mediterranean Lifestyle",
                image: "assets/images/diet_img.png",
              ),

              SizedBox(height: h * 0.02),

               DietCard(
                title: "Vegan Healthy Plan",
                image: "assets/images/salid_img.png",
              ),

              SizedBox(height: h * 0.15),
            ],
          ),

          Positioned(
            left: w * 0.05,
            right: w * 0.05,
            bottom: h * 0.02,
            child:  BottomNavBar(),
          )
        ],
      ),
    );
  }

  Widget _offerToggle(String title, bool isSelected, VoidCallback onTap) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          // height: 45,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: isSelected ? appColors.stepsColor : appColors.primaryWhite,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? appColors.primaryWhite : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
