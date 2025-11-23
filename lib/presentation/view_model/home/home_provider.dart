import 'package:flutter/material.dart';
import 'package:nutri_mind/domain/services/navigation_service.dart';
import 'package:provider/provider.dart';

import '../../../application/injections/injector.dart';
import 'home_view_model.dart';

class HomeProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const HomeProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return HomeViewModel(navigationService: injector<NavigationService>());
      },
    );
  }
}
