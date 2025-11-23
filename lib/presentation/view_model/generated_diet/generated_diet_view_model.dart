import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/generated_diet/generated_diet_view_state.dart';
import '../../../../domain/services/connectivity_service.dart';
import '../../../../foundation/abstracts/base_view_model.dart';

class GeneratedDietViewModel extends ViewModel<GeneratedDietViewModel, GeneratedDietViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  GeneratedDietViewModel() : super(GeneratedDietViewState.init()) {
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
