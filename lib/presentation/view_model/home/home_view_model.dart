import 'dart:async';
import 'package:flutter/material.dart';

import '../../../domain/services/connectivity_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';
import 'home_view_state.dart';

class HomeViewModel extends ViewModel<HomeViewModel, HomeViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  HomeViewModel() : super(HomeViewState.init()) {
    init();
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

  void handleNavigationFromSplashScreen() {}
}
