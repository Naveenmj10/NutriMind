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
              child: Column(
                children: [
                  // Header Section
                  Container(
                    color: appColors.black,
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 16,
                      children: [
                        SizedBox(
                          width: (screenSize.width - 48) / 2,
                          height: 60,
                          child: CustomButton(
                            title: "Login/SignUp",
                            onPressed: () {},
                            backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                            borderColor: appColors.borderGrey,
                            textStyle: TextStyle(
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: (screenSize.width - 48) / 2,
                          height: 60,
                          child: CustomButton(
                            title: "Join as Trainer",
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
                      ],
                    ),
                  ),

                  SizedBox(height: 50),
                  DietInfoWidget(),

                  SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
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
                            color: Colors.green.shade500,
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
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Fitness isn’t just about training, it’s about understanding",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: appColors.primaryWhite,
                        letterSpacing: -1.7,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Nutrimind bridges that gap, giving both trainers and fitness lovers the insight and tools they need to grow smarter together.",
                      style: TextStyle(
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: appColors.textGrey.withValues(alpha: 0.6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
