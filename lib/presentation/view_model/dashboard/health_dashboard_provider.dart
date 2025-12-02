import 'package:flutter/material.dart';
import 'package:nutri_mind/domain/services/navigation_service.dart';
import 'package:provider/provider.dart';

import '../../../application/injections/injector.dart';
import 'health_dashboard_view_model.dart';


class HealthDashboardProvider extends StatelessWidget {
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  const HealthDashboardProvider({super.key, required this.builder});

  ///
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HealthDashboardViewModel>(
      builder: builder,
      lazy: false,
      create: (BuildContext context) {
        return HealthDashboardViewModel(navigationService: injector<NavigationService>());
      },
    );
  }
}
