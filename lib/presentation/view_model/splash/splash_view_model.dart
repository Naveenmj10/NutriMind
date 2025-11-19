import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/splash/splash_view_state.dart';

import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';

class SplashViewModel extends ViewModel<SplashViewModel, SplashViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;

  SplashViewModel(
      {required this.navigationService,
      })
      : super(SplashViewState.init()) {
    debugPrint("Call Navigation");
    handleNavigationFromSplashScreen();
  }

  void handleNavigationFromSplashScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      navigationService.navigateToHomeScreen();
    });

  }
}
