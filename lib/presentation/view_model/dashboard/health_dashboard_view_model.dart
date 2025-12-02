import 'dart:async';
import 'package:flutter/material.dart';

import '../../../domain/services/connectivity_service.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';
import 'health_dashboard_view_state.dart';


class HealthDashboardViewModel extends ViewModel<HealthDashboardViewModel, HealthDashboardViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;


  HealthDashboardViewModel(
      {required this.navigationService,
      })
      : super(HealthDashboardViewState.init()) {
    debugPrint("Call Navigation");
  }

  ///
  void init() async {
    ///
    listenToConnectivity();

    ///
    // _listenUpdateSkippedEvent();

    ///
    Future.delayed(const Duration(microseconds: 7000), () {
      debugPrint('Animation Completed');
    });
  }

  // Future <void> handleNavigationToAIPoweredNutritionScreen() async {
  //   navigationService.navigateToAiPoweredNutritionScreen();
  // }
  //
  // Future <void> handleNavigationToScanMealsScreen() async {
  //   navigationService.navigateToScanMealScreen();
  // }
  //
  // Future <void> handleNavigationToLoginOrSignUpScreen() async {
  //   navigationService.navigateToLoginOrSignUpScreen();
  // }

Future <void> handleNavigationToHealthDashboardScreen() async {
  navigationService.navigateToHealthDashBoardScreen();

}


}
