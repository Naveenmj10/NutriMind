import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/scan/scan_view_state.dart';
import '../../../../domain/services/connectivity_service.dart';
import '../../../../foundation/abstracts/base_view_model.dart';


class ScanViewModel extends ViewModel<ScanViewModel, ScanViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ScanViewModel() : super(ScanViewState.init()) {
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
