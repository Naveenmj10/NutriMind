import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(path: '/', page: SplashRoute.page, initial: true),
    AutoRoute(path: '/home', page: HomeRoute.page),
    AutoRoute(path: '/ai-powered-nutrition', page: AiPoweredNutritionRoute.page),
    AutoRoute(path: '/ai-diet-planner', page: DietPlannerRoute.page),
    AutoRoute(path: '/generated-diet', page: GeneratedDietRoute.page),
    AutoRoute(path: '/scan-meal-meal', page: ScanMealRoute.page),
    AutoRoute(path: '/scan-result', page: ScanResultRoute.page),
    AutoRoute(path: '/auth-register', page: TrainerRegistrationRoute.page),
    AutoRoute(path: '/auth-create_account', page: CreateAnAccountRoute.page),
    AutoRoute(path: '/auth-login', page: LoginRoute.page),
    AutoRoute(path: '/auth-reset-password', page: ResetPasswordRoute.page),
    AutoRoute(path: '/auth-verify-otp', page: OTPVerificationRoute.page),
  ];
}
