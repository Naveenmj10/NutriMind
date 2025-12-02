import 'package:flutter/material.dart';
import 'package:nutri_mind/application/injections/injector.dart';
import 'package:nutri_mind/domain/services/navigation_service.dart';
import 'package:nutri_mind/presentation/view_model/ai_powered_nutrition/ai_powered_nutrition_view_model.dart';
import 'package:nutri_mind/presentation/view_model/change_password/change_password_view_model.dart';
import 'package:provider/provider.dart';

class ChangePasswordProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const ChangePasswordProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangePasswordViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return ChangePasswordViewModel(
          navigationService: injector<NavigationService>(),
        );
      },
    );
  }
}
