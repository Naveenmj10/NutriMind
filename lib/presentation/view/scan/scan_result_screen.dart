import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:nutri_mind/foundation/assets/assets.gen.dart';
import 'package:nutri_mind/presentation/widgets/custom/common_appbar.dart';
import 'package:provider/provider.dart';
import '../../../../application/injections/injector.dart';
import '../../../../foundation/theme/colors.dart';
import '../../view_model/scan/scan_provider.dart';
import '../../view_model/scan/scan_view_model.dart';
import '../../widgets/custom/common_assetImage.dart';
import '../../widgets/custom/common_text.dart';

@RoutePage()
class ScanResultScreen extends StatelessWidget {
  const ScanResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ScanProvider(
      builder: (context, child) {
        final ScanViewModel viewModel = Provider.of<ScanViewModel>(
          context,
          listen: true,
        );
        final AppColors appColors = injector<AppColors>();
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: CustomAppBar(appBarTitle: ""),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CommonAssetImage(
                      imagePath: Assets.images.icnDiet.path,
                      height: 200,
                      width: screenSize.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: const [
                        NutritionCircle(
                          title: "Calories",
                          value: "2,230 kcal",
                          ringColor: Colors.purple,
                        ),
                        NutritionCircle(
                          title: "Protein",
                          value: "23% / 100%",
                          ringColor: Colors.teal,
                        ),
                        NutritionCircle(
                          title: "Calories",
                          value: "2,230 kcal",
                          ringColor: Colors.red,
                        ),
                        NutritionCircle(
                          title: "Protein",
                          value: "23% / 100%",
                          ringColor: Colors.cyan,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  foodItem(
                    title: "Grilled Chicken Strips",
                    kcal: "220 kcal",
                    protein: "30g",
                    carbs: "0g",
                    fat: "5g",
                  ),
                  foodItem(
                    title: "Naan Bread",
                    kcal: "260 kcal",
                    protein: "7g",
                    carbs: "45g",
                    fat: "8g",
                  ),
                  foodItem(
                    title: "Sautéed Bell Peppers (Red & Yellow)",
                    kcal: "100 kcal",
                    protein: "3g",
                    carbs: "12g",
                    fat: "1g",
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: screenSize.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: CustomText(
                  title: "Okay",
                  fontSize: 18,
                  textColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget foodItem({
    required String title,
    required String kcal,
    required String protein,
    required String carbs,
    required String fat,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: title,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            textColor: Colors.white,
          ),
          const SizedBox(height: 4),
          CustomText(
            title:
                "$kcal  |  Protein: $protein  |  Carbs: $carbs  |  Fat: $fat",
            fontSize: 12,
            textColor: Colors.white70,
            letterSpacing: 0,
          ),
        ],
      ),
    );
  }
}

class NutritionCircle extends StatelessWidget {
  final String title;
  final String value;
  final Color ringColor;

  const NutritionCircle({
    super.key,
    required this.title,
    required this.value,
    required this.ringColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 110,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(decoration: const BoxDecoration(shape: BoxShape.circle)),
          CustomPaint(
            size: const Size(110, 110),
            painter: RingPainter(color: ringColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                title: title,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textColor: Colors.white,
              ),
              const SizedBox(height: 4),
              CustomText(title: value, fontSize: 14, textColor: Colors.white70),
            ],
          ),
        ],
      ),
    );
  }
}

class RingPainter extends CustomPainter {
  final Color color;
  RingPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = 6.0;
    final radius = (size.width / 2) - strokeWidth;
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -90 * (3.14 / 180),
      3.14 * 2,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
