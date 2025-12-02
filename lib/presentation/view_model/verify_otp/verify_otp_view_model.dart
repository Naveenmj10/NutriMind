import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/scan/scan_view_state.dart';
import 'package:nutri_mind/presentation/view_model/verify_otp/verify_otp_view_state.dart';
import '../../../../domain/services/connectivity_service.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
import '../../../domain/services/navigation_service.dart';


class VerifyOtpViewModel extends ViewModel<VerifyOtpViewModel, VerifyOtpViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;

  VerifyOtpViewModel({required this.navigationService}) : super(VerifyOtpViewState.init()) {
    init();
  }

  ///
  void init() async {
    ///
    listenToConnectivity();

  }

  Future <void> handleNavigationToScanResultsScreen() async {
    navigationService.navigateToScanResultsScreen();
  }
}
