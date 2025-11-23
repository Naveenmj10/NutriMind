import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/fonts.gen.dart';
import 'package:nutri_mind/presentation/view_model/diet_planner/diet_planner_provider.dart';
import 'package:nutri_mind/presentation/view_model/diet_planner/diet_planner_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../application/injections/injector.dart';
import '../../../../foundation/theme/colors.dart';
import '../../widgets/custom/common_appbar.dart';

@RoutePage()
class DietPlannerScreen extends StatefulWidget {
  const DietPlannerScreen({super.key});

  @override
  State<DietPlannerScreen> createState() => _DietPlannerScreenState();
}

class _DietPlannerScreenState extends State<DietPlannerScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _goalController = TextEditingController();
  final TextEditingController _cuisineController = TextEditingController();

  String selectedGender = "Male";
  String selectedGoalGender = "Male";

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _goalController.dispose();
    _cuisineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DietPlannerProvider(
      builder: (context, child) {
        final DietPlannerViewModel viewModel =
            Provider.of<DietPlannerViewModel>(context, listen: true);
        final AppColors appColors = injector<AppColors>();

        return Scaffold(
          backgroundColor: appColors.black,
          appBar: CustomAppBar(appBarTitle: "AI Diet Planner"),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: appColors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade800, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name Field
                        _buildLabel("Name"),
                        const SizedBox(height: 8),
                        _buildTextField(
                          controller: _nameController,
                          appColors: appColors,
                          hintText: "First Name",
                        ),
                        const SizedBox(height: 20),

                        // Age and Gender Row
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLabel("Age"),
                                  const SizedBox(height: 8),
                                  _buildTextField(
                                    controller: _ageController,
                                    appColors: appColors,
                                    hintText: "24",
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLabel("Gender"),
                                  const SizedBox(height: 8),
                                  _buildDropdownField(
                                    value: selectedGender,
                                    appColors: appColors,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedGender = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Height and Weight Row
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLabel("Height"),
                                  const SizedBox(height: 8),
                                  _buildTextField(
                                    controller: _heightController,
                                    appColors: appColors,
                                    hintText: "24",
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLabel("Weight"),
                                  const SizedBox(height: 8),
                                  _buildTextField(
                                    controller: _heightController,
                                    appColors: appColors,
                                    hintText: "70",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Goal and Gender Row
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLabel("Goal"),
                                  const SizedBox(height: 8),
                                  _buildTextField(
                                    controller: _goalController,
                                    appColors: appColors,
                                    hintText: "24",
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLabel("Gender"),
                                  const SizedBox(height: 8),
                                  _buildDropdownField(
                                    value: selectedGoalGender,
                                    appColors: appColors,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedGoalGender = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Cuisine Field
                        _buildLabel("Cuisine"),
                        const SizedBox(height: 8),
                        _buildTextField(
                          controller: _cuisineController,
                          appColors: appColors,
                          hintText: "North Indian",
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    right: 50,
                    bottom: -20,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle generate diet
                          print("Name: ${_nameController.text}");
                          print("Age: ${_ageController.text}");
                          print("Gender: $selectedGender");
                          print("Height: ${_heightController.text}");
                          print("Goal: ${_goalController.text}");
                          print("Cuisine: ${_cuisineController.text}");

                          viewModel.handleNavigationToGeneratedDietScreen();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Generate Diet",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: FontFamily.inter,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Icon(Icons.search, size: 24),
                          ],
                        ),
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

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontFamily: FontFamily.inter,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required AppColors appColors,
    required String hintText,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: appColors.black,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade800, width: 1),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 16,
          fontFamily: FontFamily.inter,
          color: Colors.grey.shade400,
        ),
        cursorColor: appColors.textGrey,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            fontFamily: FontFamily.inter,
            color: Colors.grey.shade500,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }

  Widget _buildDropdownField({
    required String value,
    required AppColors appColors,
    required Function(String?) onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: appColors.black,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade800, width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          dropdownColor: const Color(0xFF2A2A2A),
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade500),
          style: TextStyle(
            fontSize: 16,
            fontFamily: FontFamily.inter,
            color: Colors.grey.shade400,
          ),
          items: ["Male", "Female", "Other"].map((String item) {
            return DropdownMenuItem<String>(value: item, child: Text(item));
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
