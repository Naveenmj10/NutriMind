import 'package:flutter/cupertino.dart';

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

  ///
  Future<void> navigateToCreateAccountScreen() async {
    appRouter.navigate(const CreateAnAccountRoute());
  }

  ///
  Future<void> navigateToLoginScreen() async {
    appRouter.navigate(const LoginRoute());
  }

  ///
  Future<void> navigateToResetPasswordScreen() async {
    appRouter.navigate(const ResetPasswordRoute());
  }

  ///
  Future<void> navigateToVerifyOTPScreen(String enteredEmail) async {
    appRouter.navigate(OTPVerificationRoute(email: enteredEmail));
  }

  ///
  Future<void> navigateToChangePasswordScreen() async {
    appRouter.navigate(ChangePasswordRoute());
  }

  Future<void> navigateToHealthDashBoardScreen() async {
    appRouter.navigate(const HealthDashboardRoute());
  }
  Future<void> navigateToMealPlanScreen() async {
    appRouter.navigate(const MealPlanRoute());
  }
  Future<void> navigateToTrainerConnectScreen() async {
    appRouter.navigate( TrainerConnectRoute());
  }
  Future<void> navigateToFatLossGuideScreen() async {
    appRouter.navigate( FatLossGuideRoute());
  }
}
