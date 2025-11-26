import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItemCard extends StatelessWidget {
  final String title;
  final String kcal;
  final String protein;
  final String carbs;
  final String fat;

  const FoodItemCard({
    Key? key,
    required this.title,
    required this.kcal,
    required this.protein,
    required this.carbs,
    required this.fat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "$kcal  |  Protein: $protein  |  Carbs: $carbs  |  Fat: $fat",
            style: const TextStyle(fontSize: 11, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
