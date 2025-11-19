import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/splash/splash_view_model.dart';
import 'package:provider/provider.dart';

import '../../../application/injections/injector.dart';
import '../../../domain/services/navigation_service.dart';

class SplashProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const SplashProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SplashViewModel>(
        builder: builder,
        lazy: false,
        create: (BuildContext context) {
          return SplashViewModel(
            navigationService: injector<NavigationService>(),
          );
        });
  }
}
