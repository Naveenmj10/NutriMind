// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:nutri_mind/presentation/view/ai_powered_nutrition/ai_powered_nutrition_screen.dart'
    as _i1;
import 'package:nutri_mind/presentation/view/diet_planner/diet_planner_screen.dart'
    as _i2;
import 'package:nutri_mind/presentation/view/generated_diet/generated_diet_screen.dart'
    as _i3;
import 'package:nutri_mind/presentation/view/home/home_screen.dart' as _i4;
import 'package:nutri_mind/presentation/view/splash/splash_screen.dart' as _i5;

/// generated route for
/// [_i1.AiPoweredNutritionScreen]
class AiPoweredNutritionRoute extends _i6.PageRouteInfo<void> {
  const AiPoweredNutritionRoute({List<_i6.PageRouteInfo>? children})
    : super(AiPoweredNutritionRoute.name, initialChildren: children);

  static const String name = 'AiPoweredNutritionRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AiPoweredNutritionScreen();
    },
  );
}

/// generated route for
/// [_i2.DietPlannerScreen]
class DietPlannerRoute extends _i6.PageRouteInfo<void> {
  const DietPlannerRoute({List<_i6.PageRouteInfo>? children})
    : super(DietPlannerRoute.name, initialChildren: children);

  static const String name = 'DietPlannerRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.DietPlannerScreen();
    },
  );
}

/// generated route for
/// [_i3.GeneratedDietScreen]
class GeneratedDietRoute extends _i6.PageRouteInfo<void> {
  const GeneratedDietRoute({List<_i6.PageRouteInfo>? children})
    : super(GeneratedDietRoute.name, initialChildren: children);

  static const String name = 'GeneratedDietRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.GeneratedDietScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashScreen();
    },
  );
}
