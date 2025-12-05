import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import 'package:nutri_mind/presentation/view_model/ai_powered_nutrition/ai_powered_nutrition_provider.dart';
import 'package:nutri_mind/presentation/view_model/ai_powered_nutrition/ai_powered_nutrition_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../application/injections/injector.dart';
import '../../../../foundation/theme/colors.dart';

@RoutePage()
class AiPoweredNutritionScreen extends StatefulWidget {
  const AiPoweredNutritionScreen({super.key});

  @override
  State<AiPoweredNutritionScreen> createState() =>
      _AiPoweredNutritionScreenState();
}

class _AiPoweredNutritionScreenState extends State<AiPoweredNutritionScreen> {
  String selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return AiPoweredNutritionProvider(
      builder: (context, child) {
        final AiPoweredNutritionViewModel viewModel =
            Provider.of<AiPoweredNutritionViewModel>(context, listen: true);
        final AppColors appColors = injector<AppColors>();

        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            centerTitle: false,
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: appColors.textGrey,
                size: 20,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              "NutriMind",
              style: TextStyle(
                fontSize: 28,
                fontFamily: FontFamily.inter,
                fontWeight: FontWeight.bold,
                color: appColors.textGrey,
              ),
            ),
            actions: [
              Container(
                decoration: BoxDecoration(
                  color: appColors.textGrey.withValues(alpha: 0.17),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: () {
                    // Handle favorite action
                  },
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  // Description Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: appColors.textGrey.withValues(alpha: 0.17),
                      border: BoxBorder.all(
                        width: 3,
                        color: appColors.primaryWhite.withValues(alpha: 0.1),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let's create your diet plan",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.w700,
                            color: appColors.primaryWhite,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Nutrimind bridges that gap, giving both trainers and fitness lovers the insight and tools they need to grow smarter together.",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: FontFamily.inter,
                            fontWeight: FontWeight.w400,
                            color: appColors.primaryWhite,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 22),

                  // AI Diet Planner Button
                  _buildOptionButton(
                    emoji: "🍱",
                    title: "AI Diet Planner",
                    borderColor: selectedOption == "AI Diet Planner"
                        ? appColors.yellow
                        : Colors.grey.shade700,
                    onTap: () {
                      viewModel.handleNavigationToAIDietPlannerScreen();
                      setState(() {
                        selectedOption = "AI Diet Planner";
                      });
                      print("Selected: AI Diet Planner");
                    },
                  ),

                  const SizedBox(height: 22),

                  // AI Diet & Wellness CoachPlanner Button
                  _buildOptionButton(
                    emoji: "🧠",
                    title: "AI Diet & Wellness CoachPlanner",
                    borderColor:
                        selectedOption == "AI Diet & Wellness CoachPlanner"
                        ? appColors.yellow
                        : Colors.grey.shade700,
                    onTap: () {
                      setState(() {
                        selectedOption = "AI Diet & Wellness CoachPlanner";
                      });
                      print("Selected: AI Diet & Wellness CoachPlanner");
                    },
                  ),

                  const SizedBox(height: 22),

                  // AI Fitness & Fat-Loss Guide Button
                  _buildOptionButton(
                    emoji: "🧘",
                    title: "AI Fitness & Fat-Loss Guide",
                    borderColor: selectedOption == "AI Fitness & Fat-Loss Guide"
                        ? appColors.yellow
                        : Colors.grey.shade700,
                    onTap: () {
                      setState(() {
                        selectedOption = "AI Fitness & Fat-Loss Guide";
                      });
                      viewModel.handleNavigationToFatLossGuideScreen();
                      print("Selected: AI Fitness & Fat-Loss Guide");
                    },
                  ),

                  const SizedBox(height: 22),

                  // Trainer Connect Button
                  _buildOptionButton(
                    emoji: "🏋️",
                    title: "Trainer Connect",
                    borderColor: selectedOption == "Trainer Connect"
                        ? appColors.yellow
                        : Colors.grey.shade700,
                    onTap: () {
                      setState(() {
                        selectedOption = "Trainer Connect";
                      });
                      viewModel.handleNavigationToTrainerConnectScreen();
                      print("Selected: Trainer Connect");
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildOptionButton({
    required String emoji,
    required String title,
    required Color borderColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2A2A),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(emoji, style: const TextStyle(fontSize: 30)),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
