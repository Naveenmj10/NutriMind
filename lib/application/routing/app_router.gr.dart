// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:nutri_mind/presentation/view/ai_powered_nutrition/ai_powered_nutrition_screen.dart'
    as _i1;
import 'package:nutri_mind/presentation/view/auth/create_account/create_account.dart'
    as _i2;
import 'package:nutri_mind/presentation/view/auth/login/login_screen.dart'
    as _i6;
import 'package:nutri_mind/presentation/view/auth/reset_password/reset_password_screen.dart'
    as _i8;
import 'package:nutri_mind/presentation/view/auth/trainer_registration_screen.dart'
    as _i12;
import 'package:nutri_mind/presentation/view/auth/verify_otp/verify_otp_screen.dart'
    as _i7;
import 'package:nutri_mind/presentation/view/diet_planner/diet_planner_screen.dart'
    as _i3;
import 'package:nutri_mind/presentation/view/generated_diet/generated_diet_screen.dart'
    as _i4;
import 'package:nutri_mind/presentation/view/home/home_screen.dart' as _i5;
import 'package:nutri_mind/presentation/view/scan_meal/scan_result_screen.dart'
    as _i10;
import 'package:nutri_mind/presentation/view/scan_meal/scanning_screen.dart'
    as _i9;
import 'package:nutri_mind/presentation/view/splash/splash_screen.dart' as _i11;

/// generated route for
/// [_i1.AiPoweredNutritionScreen]
class AiPoweredNutritionRoute extends _i13.PageRouteInfo<void> {
  const AiPoweredNutritionRoute({List<_i13.PageRouteInfo>? children})
    : super(AiPoweredNutritionRoute.name, initialChildren: children);

  static const String name = 'AiPoweredNutritionRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.AiPoweredNutritionScreen();
    },
  );
}

/// generated route for
/// [_i2.CreateAnAccountScreen]
class CreateAnAccountRoute extends _i13.PageRouteInfo<void> {
  const CreateAnAccountRoute({List<_i13.PageRouteInfo>? children})
    : super(CreateAnAccountRoute.name, initialChildren: children);

  static const String name = 'CreateAnAccountRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateAnAccountScreen();
    },
  );
}

/// generated route for
/// [_i3.DietPlannerScreen]
class DietPlannerRoute extends _i13.PageRouteInfo<void> {
  const DietPlannerRoute({List<_i13.PageRouteInfo>? children})
    : super(DietPlannerRoute.name, initialChildren: children);

  static const String name = 'DietPlannerRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.DietPlannerScreen();
    },
  );
}

/// generated route for
/// [_i4.GeneratedDietScreen]
class GeneratedDietRoute extends _i13.PageRouteInfo<void> {
  const GeneratedDietRoute({List<_i13.PageRouteInfo>? children})
    : super(GeneratedDietRoute.name, initialChildren: children);

  static const String name = 'GeneratedDietRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.GeneratedDietScreen();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoginScreen();
    },
  );
}

/// generated route for
/// [_i7.OTPVerificationScreen]
class OTPVerificationRoute
    extends _i13.PageRouteInfo<OTPVerificationRouteArgs> {
  OTPVerificationRoute({
    _i14.Key? key,
    required String email,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         OTPVerificationRoute.name,
         args: OTPVerificationRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'OTPVerificationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OTPVerificationRouteArgs>();
      return _i7.OTPVerificationScreen(key: args.key, email: args.email);
    },
  );
}

class OTPVerificationRouteArgs {
  const OTPVerificationRouteArgs({this.key, required this.email});

  final _i14.Key? key;

  final String email;

  @override
  String toString() {
    return 'OTPVerificationRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i8.ResetPasswordScreen]
class ResetPasswordRoute extends _i13.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i13.PageRouteInfo>? children})
    : super(ResetPasswordRoute.name, initialChildren: children);

  static const String name = 'ResetPasswordRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.ResetPasswordScreen();
    },
  );
}

/// generated route for
/// [_i9.ScanMealScreen]
class ScanMealRoute extends _i13.PageRouteInfo<void> {
  const ScanMealRoute({List<_i13.PageRouteInfo>? children})
    : super(ScanMealRoute.name, initialChildren: children);

  static const String name = 'ScanMealRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.ScanMealScreen();
    },
  );
}

/// generated route for
/// [_i10.ScanResultScreen]
class ScanResultRoute extends _i13.PageRouteInfo<void> {
  const ScanResultRoute({List<_i13.PageRouteInfo>? children})
    : super(ScanResultRoute.name, initialChildren: children);

  static const String name = 'ScanResultRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.ScanResultScreen();
    },
  );
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.SplashScreen();
    },
  );
}

/// generated route for
/// [_i12.TrainerRegistrationScreen]
class TrainerRegistrationRoute extends _i13.PageRouteInfo<void> {
  const TrainerRegistrationRoute({List<_i13.PageRouteInfo>? children})
    : super(TrainerRegistrationRoute.name, initialChildren: children);

  static const String name = 'TrainerRegistrationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i12.TrainerRegistrationScreen();
    },
  );
}
