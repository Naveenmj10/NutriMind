import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/login/login_view_state.dart';
import 'package:nutri_mind/presentation/view_model/reset_password/reset_password_view_state.dart';
import 'package:nutri_mind/presentation/view_model/scan/scan_view_state.dart';
import '../../../../domain/services/connectivity_service.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
import '../../../domain/services/navigation_service.dart';


class ResetPasswordViewModel extends ViewModel<ResetPasswordViewModel, ResetPasswordViewState> {

  ///
  final NavigationService navigationService;

  ResetPasswordViewModel({required this.navigationService}) : super(ResetPasswordViewState.init()) {
    init();
  }

  ///
  void init() async {
    ///
    listenToConnectivity();

  }

  Future <void> handleNavigationToCreateAccountScreen() async {
    navigationService.navigateToCreateAccountScreen();
  }
}
