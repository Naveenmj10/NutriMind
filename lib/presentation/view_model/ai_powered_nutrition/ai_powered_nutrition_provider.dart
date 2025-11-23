import 'package:flutter/material.dart';
import 'package:nutri_mind/application/injections/injector.dart';
import 'package:nutri_mind/domain/services/navigation_service.dart';
import 'package:nutri_mind/presentation/view_model/ai_powered_nutrition/ai_powered_nutrition_view_model.dart';
import 'package:provider/provider.dart';

class AiPoweredNutritionProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const AiPoweredNutritionProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AiPoweredNutritionViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return AiPoweredNutritionViewModel(
          navigationService: injector<NavigationService>(),
        );
      },
    );
  }
}
