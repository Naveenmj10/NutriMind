import 'package:flutter/material.dart';
import 'package:nutri_mind/application/injections/injector.dart';
import 'package:nutri_mind/domain/services/navigation_service.dart';
import 'package:nutri_mind/presentation/view_model/login/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const LoginProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return LoginViewModel(navigationService: injector<NavigationService>());
      },
    );
  }
}
