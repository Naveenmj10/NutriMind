import 'dart:async';
import 'package:flutter/material.dart';

import '../../../domain/services/connectivity_service.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';
import 'home_view_state.dart';

class HomeViewModel extends ViewModel<HomeViewModel, HomeViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;


  HomeViewModel(
      {required this.navigationService,
      })
      : super(HomeViewState.init()) {
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

  Future <void> handleNavigationToAIPoweredNutritionScreen() async {
      navigationService.navigateToAiPoweredNutritionScreen();
  }

  Future <void> handleNavigationToScanMealsScreen() async {
      navigationService.navigateToScanMealScreen();
  }

  Future <void> handleNavigationToLoginOrSignUpScreen() async {
      navigationService.navigateToLoginOrSignUpScreen();
  }

  Future <void> handleNavigationToLoginScreen() async {
      navigationService.navigateToLoginScreen();
  }
}
