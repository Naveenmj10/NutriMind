import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/assets.gen.dart';
import 'package:nutri_mind/presentation/view_model/generated_diet/generated_diet_provider.dart';
import 'package:nutri_mind/presentation/view_model/generated_diet/generated_diet_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../application/injections/injector.dart';
import '../../../../foundation/theme/colors.dart';
import '../../../foundation/assets/fonts.gen.dart';
import '../../widgets/custom/common_appbar.dart';
import '../../widgets/custom/common_text.dart';

@RoutePage()
class GeneratedDietScreen extends StatelessWidget {
  const GeneratedDietScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GeneratedDietProvider(
      builder: (context, child) {
        final GeneratedDietViewModel viewModel =
            Provider.of<GeneratedDietViewModel>(context, listen: true);
        final AppColors appColors = injector<AppColors>();
        return Scaffold(
          backgroundColor: Colors.black,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
              bottom: 6,
              top: 6,
            ),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => DietianScreen()),
                // );
              },
              child: buildPlanNowBar(context),
            ),
          ),
          appBar: CustomAppBar(appBarTitle: "First Meal Option(Breakfast)"),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: screenSize.width,
                        padding: const EdgeInsets.only(
                          top: 60,
                          left: 18,
                          right: 18,
                          bottom: 22,
                        ),
                        decoration: BoxDecoration(
                          color: appColors.teal.withValues(alpha: 0.49),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: appColors.teal,
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: "Oatmeal with Fruit and Nuts",
                              fontSize: 22,
                              fontFamily: FontFamily.inter,
                              textColor: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Image.asset(Assets.images.icnClock.path),
                                const SizedBox(width: 6),
                                 CustomText(
                                  title: "15 Minutes",
                                  fontSize: 15,
                                  fontFamily: FontFamily.inter,
                                  textColor: appColors.primaryWhite,
                                  fontWeight: FontWeight.w400,
                                ),
                                const SizedBox(width: 20),
                                const Icon(
                                  Icons.people,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                const SizedBox(width: 6),
                                const CustomText(
                                  title: "Serves: 2 people",
                                  fontSize: 15,
                                  fontFamily: FontFamily.inter,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                             CustomText(
                              title:
                                  "Oatmeal with Fruit and Nuts is an excellent breakfast, providing sustained energy and supporting heart health through its beta-glucan fiber, which lowers cholesterol and stabilizes blood sugar. "
                                  "The added nuts and fruit boost satiety and deliver vital nutrients, aiding in weight management.",
                              fontSize: 15,
                              fontFamily: FontFamily.inter,
                              textColor: appColors.primaryWhite,
                              fontWeight: FontWeight.w400,
                               letterSpacing: 0.8,
                            ),
                            const SizedBox(height: 14),
                             CustomText(
                              title: "Recipe By Alisha D’souza",
                              fontSize: 14,
                              fontFamily: FontFamily.inter,
                              textColor: appColors.primaryWhite,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -60,
                        left: screenSize.width / 2 - 70,
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(Assets.images.icnOatMeal.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  MealComponentsTable(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MealComponentsTable extends StatelessWidget {
  const MealComponentsTable({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final AppColors appColors = injector<AppColors>();

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: CustomText(
                        textColor: appColors.borderGrey,
                        title: "Key Component",
                        fontFamily: FontFamily.inter,
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: CustomText(
                        textColor: appColors.borderGrey,
                        title: "(Vitamins, Antioxidants, Fiber)",
                        fontSize: 12,
                        letterSpacing: 0,
                        fontFamily: FontFamily.inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey.shade300, thickness: 1),
            _buildRow(
              context: context,
              image: Assets.images.icnOatMeal.path,
              title: "Oatmeal",
              subTitle: '(Complex Carbohydrate & Fiber)',
              description:
                  "Provides sustained energy due to its slow digestion. High in soluble fiber (beta-glucan), which is scientifically proven to help lower LDL (“bad”) cholesterol.",
            ),
            Divider(color: Colors.grey.shade300, thickness: 1),
            _buildRow(
              context: context,
              image: Assets.images.icnOatMeal.path,
              title: "Nuts",
              subTitle: '(Healthy Fats & Protein)',
              description:
                  "Offers satiety (feeling of fullness), preventing overeating. Provides essential Omega-3 fatty acids and protein for muscle maintenance.",
            ),
            Divider(color: Colors.grey.shade300, thickness: 1),
            _buildRow(
              context: context,
              image: Assets.images.icnOatMeal.path,
              title: "Fruit",
              subTitle: '(Vitamins, Antioxidants)',
              description:
                  "Rich in antioxidants and vitamins vital for immune support. Adds natural sweetness.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow({
    required BuildContext context,
    required String image,
    required String title,
    required String subTitle,
    required String description,
  }) {
    final width = MediaQuery.of(context).size.width;
    final AppColors appColors = injector<AppColors>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.asset(image, width: 40, height: 40, fit: BoxFit.cover),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: width * 0.33,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  textColor: appColors.borderGrey,
                  title: title,
                  fontSize: 14,
                  letterSpacing: 0,
                  fontFamily: FontFamily.inter,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  textColor: appColors.borderGrey,
                  title: subTitle,
                  fontSize: 10,
                  letterSpacing: 0,
                  fontFamily: FontFamily.inter,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: CustomText(
              textColor: appColors.borderGrey,
              fontFamily: FontFamily.inter,
              letterSpacing: 0,
              title: description,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildPlanNowBar(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    margin: EdgeInsets.only(bottom: 20, top: 10),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xFF313131),
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: Colors.white, width: 1),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      children: [
        const Icon(Icons.add, color: Colors.white, size: 26),
        const SizedBox(width: 15),
        Expanded(
          child: CustomText(
            title: "Plan now",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
        ),
        const Icon(Icons.mic, color: Colors.white, size: 22),
      ],
    ),
  );
}
