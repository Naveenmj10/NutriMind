import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutri_mind/presentation/view_model/ai_powered_nutrition/ai_powered_nutrition_view_state.dart';
import 'package:nutri_mind/presentation/view_model/diet_planner/diet_planner_view_state.dart';

import '../../../domain/services/connectivity_service.dart';
import '../../../domain/services/navigation_service.dart';
import '../../../foundation/abstracts/base_view_model.dart';

class DietPlannerViewModel extends ViewModel<DietPlannerViewModel, DietPlannerViewState> {

  ///
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  ///
  final NavigationService navigationService;

  DietPlannerViewModel({required this.navigationService}) : super(DietPlannerViewState.init()) {
    init();
  }

  ///
  void init() async {
    ///
    listenToConnectivity();

  }

  Future<void>handleNavigationToGeneratedDietScreen() async {
    navigationService.navigateToGeneratedDietScreen();
  }
}
