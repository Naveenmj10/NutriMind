import 'package:flutter/cupertino.dart';
import 'package:nutri_mind/presentation/view/dashboard/health_dashboard_screen.dart';

import '../../application/routing/app_router.dart';
import '../../application/routing/app_router.gr.dart';

class NavigationService {
  final AppRouter appRouter;

  ///
  NavigationService(this.appRouter);

  /// Common popup
  Future<void> popIt(BuildContext context) async {
    Navigator.of(context).pop();
  }

  ///
  GlobalKey<NavigatorState> getNavigatorKey() {
    return appRouter.navigatorKey;
  }

  ///
  Future<void> navigateToHomeScreen() async {
    appRouter.navigate(const HomeRoute());
  }

  ///
  Future<void> navigateToAiPoweredNutritionScreen() async {
    appRouter.navigate(const AiPoweredNutritionRoute());
  }

  ///
  Future<void> navigateToAiDietPlannerScreen() async {
    appRouter.navigate(const DietPlannerRoute());
  }

  ///
  Future<void> navigateToGeneratedDietScreen() async {
    appRouter.navigate(const GeneratedDietRoute());
  }

  ///
  Future<void> navigateToScanMealScreen() async {
    appRouter.navigate(const ScanMealRoute());
  }

 ///
  Future<void> navigateToScanResultsScreen() async {
    appRouter.navigate(const ScanResultRoute());
  }

  ///
  Future<void> navigateToLoginOrSignUpScreen() async {
    appRouter.navigate(const TrainerRegistrationRoute());
  }

  Future<void> navigateToHealthDashBoardScreen() async {
    appRouter.navigate(const HealthDashBoardRoute());
  }



}
