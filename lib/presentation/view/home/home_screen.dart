import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/assets.gen.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import 'package:nutri_mind/presentation/widgets/home/diet_info_widget.dart';
import 'package:provider/provider.dart';

import '../../../application/injections/injector.dart';
import '../../../foundation/theme/colors.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/home/home_view_model.dart';
import '../../widgets/custom/custom_button.dart';
import '../../widgets/home/meal_macros_widget.dart';
import '../../widgets/home/testimonial_card.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return HomeProvider(
      builder: (context, child) {
        final HomeViewModel viewModel = Provider.of<HomeViewModel>(
          context,
          listen: true,
        );
        final AppColors appColors = injector<AppColors>();

        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Header Section
                    Container(
                      color: appColors.black,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NutriMind",
                            style: TextStyle(
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: appColors.primaryWhite,
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    "TRAINERS",
                                    style: TextStyle(
                                      fontFamily: FontFamily.inter,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: appColors.primaryWhite.withValues(
                                        alpha: 0.7,
                                      ),
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    "PRICING",
                                    style: TextStyle(
                                      fontFamily: FontFamily.inter,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: appColors.primaryWhite.withValues(
                                        alpha: 0.7,
                                      ),
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 8),

                    // Buttons Section
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 16,
                      children: [
                        SizedBox(
                          width: (screenSize.width) / 2.5,
                          child: CustomButton(
                            title: "Login/SignUp",
                            onPressed: () {
                              viewModel.handleNavigationToCreateAccountScreen();
                            },
                            backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                            borderColor: appColors.borderGrey,
                            textStyle: TextStyle(
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: (screenSize.width) / 2.5,
                          child: CustomButton(
                            title: "Join as Trainer",
                            onPressed: () {},
                            backgroundColor: appColors.teal,
                            textColor: appColors.primaryWhite,
                            borderColor: appColors.teal,
                            textStyle: TextStyle(
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50),
                    DietInfoWidget(),

                    SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: appColors.teal,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                              "NEW",
                              style: TextStyle(
                                fontFamily: FontFamily.inter,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          // DESCRIPTION TEXT
                          const Expanded(
                            child: Text(
                              "High Intensity workout to burn calories",
                              style: TextStyle(
                                fontFamily: FontFamily.inter,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                letterSpacing: 0.5,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Fitness isn't just about training, it's about understanding",
                        style: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: appColors.primaryWhite,
                          letterSpacing: -1.7,
                        ),
                      ),
                    ),
                    Text(
                      "Nutrimind bridges that gap, giving both trainers and fitness lovers the insight and tools they need to grow smarter together.",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: appColors.textGrey.withValues(alpha: 0.6),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // "How is it work?" Section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Two buttons at the top
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                viewModel.handleNavigationToScanMealsScreen();
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 18,
                                ),
                                decoration: BoxDecoration(
                                  color: appColors.teal,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Scan Your Meal",
                                      style: TextStyle(
                                        fontFamily: FontFamily.inter,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: (){
                                viewModel.handleNavigationToAIPoweredNutritionScreen();
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 18,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "AI-Powered Nutrition",
                                  style: TextStyle(
                                    fontFamily: FontFamily.inter,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        // "How is it work?" title
                        Text(
                          "How is it work?",
                          style: TextStyle(
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: appColors.textGrey,
                            letterSpacing: -0.5,
                          ),
                        ),

                        const SizedBox(height: 30),

                        // First Card - Scan your meal
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image with rounded top corners
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              child: Image.asset(
                                Assets.images.icnScanMeal.path,
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  "Scan your meal",
                                  style: TextStyle(
                                    fontFamily: FontFamily.inter,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: appColors.textGrey,
                                    letterSpacing: -0.5,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "AI detects calories & nutrients.",
                                  style: TextStyle(
                                    fontFamily: FontFamily.inter,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: appColors.primaryWhite.withValues(
                                      alpha: 0.6,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        // Second section title
                        Text(
                          "Smart nutrition meets real-time learning",
                          style: TextStyle(
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: appColors.primaryWhite,
                            letterSpacing: -1.74,
                          ),
                        ),

                        const SizedBox(height: 30),

                        // Second Card - Detects meal macros
                        Container(
                          height: 430,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                Assets.images.icnDetectMealBg.path,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withValues(alpha: 0.1),
                                  Colors.black.withValues(alpha: 0.2),
                                ],
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Top text
                                SizedBox(height: 20),
                                Text(
                                  "Detects meal\nmacros",
                                  style: TextStyle(
                                    fontFamily: FontFamily.inter,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 36,
                                    color: appColors.primaryWhite,
                                    letterSpacing: -1.7,
                                    height: 1.1,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  color: appColors.teal,
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "automatically ",
                                    style: TextStyle(
                                      fontFamily: FontFamily.inter,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 36,
                                      color: appColors.black,
                                      letterSpacing: -1.7,
                                      height: 1.1,
                                    ),
                                  ),
                                ),
                                Spacer(),

                                // Bottom card - Detected Macros
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.all(
                                                  4,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: appColors.primaryWhite,
                                                  border: Border.all(
                                                    color: appColors.green,
                                                    width: 3,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "+",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontFamily:
                                                          FontFamily.inter,
                                                      fontSize: 17,
                                                      color: appColors.teal,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                "Detected Macros",
                                                style: TextStyle(
                                                  fontFamily: FontFamily.inter,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 17,
                                                  letterSpacing: 0,
                                                  color: appColors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            MealMacrosWidget(
                                              icon:
                                                  Assets.images.icnProtein.path,
                                              iconColor: Colors.orange,
                                              label: "Protein",
                                              value: "32g",
                                              appColors: appColors,
                                            ),
                                            MealMacrosWidget(
                                              icon: Assets.images.icnCarbs.path,
                                              iconColor: Colors.blue,
                                              label: "Carbs",
                                              value: "45g",
                                              appColors: appColors,
                                            ),
                                            MealMacrosWidget(
                                              icon: Assets.images.icnFats.path,
                                              iconColor: Colors.red,
                                              label: "Fats",
                                              value: "18g",
                                              appColors: appColors,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),

                    // Second section title
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, bottom: 20.0),
                        child: Text(
                          "Trainers",
                          style: TextStyle(
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: appColors.primaryWhite,
                            letterSpacing: -1.74,
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        Assets.images.icnTrainers.path,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Assign meal + workout plans Track client progress in real-time Get AI recommendations for each trainee",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: appColors.primaryWhite.withValues(alpha: 0.6),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomButton(
                        title: "Open Trainer Portal",
                        onPressed: () {},
                        backgroundColor: appColors.teal,
                        textColor: appColors.primaryWhite,
                        borderColor: appColors.teal,
                        textStyle: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, bottom: 20.0),
                        child: Text(
                          "Fitness Lovers",
                          style: TextStyle(
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: appColors.primaryWhite,
                            letterSpacing: -1.74,
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        Assets.images.icnFitnessLovers.path,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "See what your trainer sees \nUnderstand your food impact \nStay consistent with AI motivation",
                        style: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                          wordSpacing: 0.9,
                          fontSize: 16,
                          color: appColors.primaryWhite.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomButton(
                        title: "Start as Fitness Lover",
                        onPressed: () {},
                        backgroundColor: Colors.transparent,
                        textColor: appColors.primaryWhite,
                        borderColor: appColors.borderGrey,
                        textStyle: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Testimonials",
                        style: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.74,
                          fontSize: 22,
                          color: appColors.primaryWhite.withValues(alpha: 0.6),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, bottom: 20.0),
                        child: Text(
                          "What fintness lover say about NutriMind",
                          style: TextStyle(
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: appColors.primaryWhite,
                            letterSpacing: -1.74,
                          ),
                        ),
                      ),
                    ),

                    TestimonialCard(
                      testimonial:
                          "I love NutriMind. It has a very personalized meal, and many more things. I really recommend it",
                      name: "Raj Yadav",
                      role: "Fitness Trainer ",
                      rating: 4,
                      backgroundColor: appColors.borderGrey,
                      textColor: appColors.textGrey,
                      starColor: appColors.textGrey,
                    ),
                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, bottom: 20.0),
                        child: Text(
                          "Transform how you train,\neat, and grow — with NutriMind.",
                          style: TextStyle(
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: appColors.primaryWhite,
                            letterSpacing: -1.74,
                          ),
                        ),
                      ),
                    ),

                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          child: Image.asset(
                            Assets.images.icnBanner.path,
                            width: double.infinity,
                            height: 300,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 40,
                          right: 40,
                          child: CustomButton(
                            title: "Download Now",
                            onPressed: () {},
                            backgroundColor: appColors.teal,
                            textColor: appColors.primaryWhite,
                            borderColor: appColors.teal,
                            textStyle: TextStyle(
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "NutriMind",
                        style: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: appColors.primaryWhite,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Body. Mind. Connected.",
                        style: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: -1.05,
                          color: appColors.borderGrey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  Assets.images.icnGooglePlay.path,
                                ),
                                fit: BoxFit.fill, // 👍 fills entire area
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  Assets.images.icnAppstore.path,
                                ),
                                fit: BoxFit.fill, // 👍 fills entire area
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          fontFamily: FontFamily.inter,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          letterSpacing: -1.05,
                          color: appColors.borderGrey,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, bottom: 20.0),
                        child: Text(
                          "contact@nutrimind.com",
                          style: TextStyle(
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: appColors.primaryWhite,
                            letterSpacing: -1.05,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
