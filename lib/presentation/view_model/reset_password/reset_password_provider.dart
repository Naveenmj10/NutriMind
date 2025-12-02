import 'package:flutter/material.dart';
import 'package:nutri_mind/application/injections/injector.dart';
import 'package:nutri_mind/domain/services/navigation_service.dart';
import 'package:nutri_mind/presentation/view_model/reset_password/reset_password_view_model.dart';
import 'package:nutri_mind/presentation/view_model/scan/scan_view_model.dart';
import 'package:provider/provider.dart';

class ResetPasswordProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const ResetPasswordProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ResetPasswordViewModel>(
        builder: builder,
        lazy: false,
        create: (BuildContext context) {
          return ResetPasswordViewModel(
            navigationService: injector<NavigationService>(),
          );
        });
  }
}
