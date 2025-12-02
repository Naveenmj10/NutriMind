import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/ai_powered_nutrition/ai_powered_nutrition_view_state.dart';
import 'package:nutri_mind/presentation/view_model/change_password/change_password_view_state.dart';

import '../../../domain/services/connectivity_service.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';

class ChangePasswordViewModel
    extends
    ViewModel<ChangePasswordViewModel, ChangePasswordViewState> {
  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;

  ChangePasswordViewModel({required this.navigationService})
      : super(ChangePasswordViewState.init()) {
    init();
  }

  ///
  void init() async {
    ///
    listenToConnectivity();
  }

}
