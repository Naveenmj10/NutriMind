// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:nutri_mind/presentation/view/ai_powered_nutrition/ai_powered_nutrition_screen.dart'
    as _i1;
import 'package:nutri_mind/presentation/view/auth/change_password/change_password_screen.dart'
    as _i2;
import 'package:nutri_mind/presentation/view/auth/create_account/create_account.dart'
    as _i3;
import 'package:nutri_mind/presentation/view/auth/login/login_screen.dart'
    as _i8;
import 'package:nutri_mind/presentation/view/auth/reset_password/reset_password_screen.dart'
    as _i10;
import 'package:nutri_mind/presentation/view/auth/trainer_registration_screen.dart'
    as _i14;
import 'package:nutri_mind/presentation/view/auth/verify_otp/verify_otp_screen.dart'
    as _i9;
import 'package:nutri_mind/presentation/view/dashboard/health_dashboard_screen.dart'
    as _i6;
import 'package:nutri_mind/presentation/view/diet_planner/diet_planner_screen.dart'
    as _i4;
import 'package:nutri_mind/presentation/view/generated_diet/generated_diet_screen.dart'
    as _i5;
import 'package:nutri_mind/presentation/view/home/home_screen.dart' as _i7;
import 'package:nutri_mind/presentation/view/scan_meal/scan_result_screen.dart'
    as _i12;
import 'package:nutri_mind/presentation/view/scan_meal/scanning_screen.dart'
    as _i11;
import 'package:nutri_mind/presentation/view/splash/splash_screen.dart' as _i13;

/// generated route for
/// [_i1.AiPoweredNutritionScreen]
class AiPoweredNutritionRoute extends _i15.PageRouteInfo<void> {
  const AiPoweredNutritionRoute({List<_i15.PageRouteInfo>? children})
    : super(AiPoweredNutritionRoute.name, initialChildren: children);

  static const String name = 'AiPoweredNutritionRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i1.AiPoweredNutritionScreen();
    },
  );
}

/// generated route for
/// [_i2.ChangePasswordScreen]
class ChangePasswordRoute extends _i15.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i15.PageRouteInfo>? children})
    : super(ChangePasswordRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChangePasswordScreen();
    },
  );
}

/// generated route for
/// [_i3.CreateAnAccountScreen]
class CreateAnAccountRoute extends _i15.PageRouteInfo<void> {
  const CreateAnAccountRoute({List<_i15.PageRouteInfo>? children})
    : super(CreateAnAccountRoute.name, initialChildren: children);

  static const String name = 'CreateAnAccountRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.CreateAnAccountScreen();
    },
  );
}

/// generated route for
/// [_i4.DietPlannerScreen]
class DietPlannerRoute extends _i15.PageRouteInfo<void> {
  const DietPlannerRoute({List<_i15.PageRouteInfo>? children})
    : super(DietPlannerRoute.name, initialChildren: children);

  static const String name = 'DietPlannerRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i4.DietPlannerScreen();
    },
  );
}

/// generated route for
/// [_i5.GeneratedDietScreen]
class GeneratedDietRoute extends _i15.PageRouteInfo<void> {
  const GeneratedDietRoute({List<_i15.PageRouteInfo>? children})
    : super(GeneratedDietRoute.name, initialChildren: children);

  static const String name = 'GeneratedDietRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.GeneratedDietScreen();
    },
  );
}

/// generated route for
/// [_i6.HealthDashboardScreen]
class HealthDashboardRoute extends _i15.PageRouteInfo<void> {
  const HealthDashboardRoute({List<_i15.PageRouteInfo>? children})
    : super(HealthDashboardRoute.name, initialChildren: children);

  static const String name = 'HealthDashboardRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.HealthDashboardScreen();
    },
  );
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeScreen();
    },
  );
}

/// generated route for
/// [_i8.LoginScreen]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.LoginScreen();
    },
  );
}

/// generated route for
/// [_i9.OTPVerificationScreen]
class OTPVerificationRoute
    extends _i15.PageRouteInfo<OTPVerificationRouteArgs> {
  OTPVerificationRoute({
    _i16.Key? key,
    required String email,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         OTPVerificationRoute.name,
         args: OTPVerificationRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'OTPVerificationRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OTPVerificationRouteArgs>();
      return _i9.OTPVerificationScreen(key: args.key, email: args.email);
    },
  );
}

class OTPVerificationRouteArgs {
  const OTPVerificationRouteArgs({this.key, required this.email});

  final _i16.Key? key;

  final String email;

  @override
  String toString() {
    return 'OTPVerificationRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i10.ResetPasswordScreen]
class ResetPasswordRoute extends _i15.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i15.PageRouteInfo>? children})
    : super(ResetPasswordRoute.name, initialChildren: children);

  static const String name = 'ResetPasswordRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i10.ResetPasswordScreen();
    },
  );
}

/// generated route for
/// [_i11.ScanMealScreen]
class ScanMealRoute extends _i15.PageRouteInfo<void> {
  const ScanMealRoute({List<_i15.PageRouteInfo>? children})
    : super(ScanMealRoute.name, initialChildren: children);

  static const String name = 'ScanMealRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.ScanMealScreen();
    },
  );
}

/// generated route for
/// [_i12.ScanResultScreen]
class ScanResultRoute extends _i15.PageRouteInfo<void> {
  const ScanResultRoute({List<_i15.PageRouteInfo>? children})
    : super(ScanResultRoute.name, initialChildren: children);

  static const String name = 'ScanResultRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.ScanResultScreen();
    },
  );
}

/// generated route for
/// [_i13.SplashScreen]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i13.SplashScreen();
    },
  );
}

/// generated route for
/// [_i14.TrainerRegistrationScreen]
class TrainerRegistrationRoute extends _i15.PageRouteInfo<void> {
  const TrainerRegistrationRoute({List<_i15.PageRouteInfo>? children})
    : super(TrainerRegistrationRoute.name, initialChildren: children);

  static const String name = 'TrainerRegistrationRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i14.TrainerRegistrationScreen();
    },
  );
}
