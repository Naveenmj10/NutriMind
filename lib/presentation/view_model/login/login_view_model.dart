import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/login/login_view_state.dart';
import 'package:nutri_mind/presentation/view_model/scan/scan_view_state.dart';
import '../../../../domain/services/connectivity_service.dart';
import '../../../../foundation/abstracts/base_view_model.dart';
import '../../../domain/services/navigation_service.dart';


class LoginViewModel extends ViewModel<LoginViewModel, LoginViewState> {

  ///
  final NavigationService navigationService;

  LoginViewModel({required this.navigationService}) : super(LoginViewState.init()) {
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
