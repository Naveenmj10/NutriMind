import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../foundation/assets/assets.gen.dart';
import '../../widgets/custom/common_assetImage.dart';
import '../../widgets/scan/food_item_card_widget.dart';
import '../../widgets/scan/nutrition_circle.dart';

@RoutePage()
class ScanResultScreen extends StatefulWidget {
  const ScanResultScreen({Key? key}) : super(key: key);

  @override
  State<ScanResultScreen> createState() => _ScanResultScreenState();
}

class _ScanResultScreenState extends State<ScanResultScreen> {
  bool isLiked = false;
  late ScrollController _scrollController;
  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: false,
                elevation: 0,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Transform.translate(
                        offset: Offset(0, _scrollOffset * 0.5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CommonAssetImage(
                            imagePath: Assets.images.icnDiet.path,
                            height: 200,
                            width: screenSize.width,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.3),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 15),

                    /// -------------------------
                    /// NUTRITION GRID (UPDATED)
                    /// -------------------------
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1D1D1F),
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 1.1,
                        children: const [
                          NutritionCircle(
                            title: "Calories",
                            value: "2,230 kcal",
                            progress: 0.75,
                            colors: [Color(0xFFD1B3FF), Color(0xFF7A39FF)],
                          ),
                          NutritionCircle(
                            title: "Protein",
                            value: "23% / 100%",
                            progress: 0.23,
                            colors: [Color(0xFFB3FFD9), Color(0xFF0B592F)],
                          ),
                          NutritionCircle(
                            title: "Carbs",
                            value: "45g",
                            progress: 0.40,
                            colors: [Color(0xFFFFE0E0), Color(0xFFFF3D3D)],
                          ),
                          NutritionCircle(
                            title: "Fat",
                            value: "14g",
                            progress: 0.22,
                            colors: [Color(0xFFB7E9FF), Color(0xFF00CFFF)],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// -------------------------
                    /// FOOD ITEMS
                    /// -------------------------
                    FoodItemCard(
                      title: "Grilled Chicken Strips",
                      kcal: "220 kcal",
                      protein: "30g",
                      carbs: "0g",
                      fat: "5g",
                    ),
                    FoodItemCard(
                      title: "Naan Bread",
                      kcal: "260 kcal",
                      protein: "7g",
                      carbs: "45g",
                      fat: "8g",
                    ),
                    FoodItemCard(
                      title: "Sautéed Bell Peppers (Red & Yellow)",
                      kcal: "100 kcal",
                      protein: "3g",
                      carbs: "12g",
                      fat: "1g",
                    ),

                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),

          /// Floating Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 16,
                right: 16,
                bottom: 12,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                        border: Border.all(color: Colors.white12),
                      ),
                      child: const Icon(Icons.chevron_left, color: Colors.white, size: 24),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                        border: Border.all(color: Colors.white12),
                      ),
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: isLiked ? Colors.red : Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      /// Bottom button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                "Okay",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}