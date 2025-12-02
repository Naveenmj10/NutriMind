// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ai_image.png
  AssetGenImage get aiImage =>
      const AssetGenImage('assets/images/ai_image.png');

  /// File path: assets/images/apple_icon.png
  AssetGenImage get appleIcon =>
      const AssetGenImage('assets/images/apple_icon.png');

  /// File path: assets/images/blur_img.png
  AssetGenImage get blurImg =>
      const AssetGenImage('assets/images/blur_img.png');

  /// File path: assets/images/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/images/google_icon.png');

  /// File path: assets/images/human.png
  AssetGenImage get human => const AssetGenImage('assets/images/human.png');

  /// File path: assets/images/icn_apple.png
  AssetGenImage get icnApple =>
      const AssetGenImage('assets/images/icn_apple.png');

  /// File path: assets/images/icn_appstore.png
  AssetGenImage get icnAppstore =>
      const AssetGenImage('assets/images/icn_appstore.png');

  /// File path: assets/images/icn_banner.png
  AssetGenImage get icnBanner =>
      const AssetGenImage('assets/images/icn_banner.png');

  /// File path: assets/images/icn_camera.png
  AssetGenImage get icnCamera =>
      const AssetGenImage('assets/images/icn_camera.png');

  /// File path: assets/images/icn_carbs.png
  AssetGenImage get icnCarbs =>
      const AssetGenImage('assets/images/icn_carbs.png');

  /// File path: assets/images/icn_clock.png
  AssetGenImage get icnClock =>
      const AssetGenImage('assets/images/icn_clock.png');

  /// File path: assets/images/icn_detect_meal_bg.png
  AssetGenImage get icnDetectMealBg =>
      const AssetGenImage('assets/images/icn_detect_meal_bg.png');

  /// File path: assets/images/icn_diet.png
  AssetGenImage get icnDiet =>
      const AssetGenImage('assets/images/icn_diet.png');

  /// File path: assets/images/icn_fats.png
  AssetGenImage get icnFats =>
      const AssetGenImage('assets/images/icn_fats.png');

  /// File path: assets/images/icn_fitness_lovers.png
  AssetGenImage get icnFitnessLovers =>
      const AssetGenImage('assets/images/icn_fitness_lovers.png');

  /// File path: assets/images/icn_google.png
  AssetGenImage get icnGoogle =>
      const AssetGenImage('assets/images/icn_google.png');

  /// File path: assets/images/icn_google_play.png
  AssetGenImage get icnGooglePlay =>
      const AssetGenImage('assets/images/icn_google_play.png');

  /// File path: assets/images/icn_grilled_chicken.png
  AssetGenImage get icnGrilledChicken =>
      const AssetGenImage('assets/images/icn_grilled_chicken.png');

  /// File path: assets/images/icn_oat_meal.png
  AssetGenImage get icnOatMeal =>
      const AssetGenImage('assets/images/icn_oat_meal.png');

  /// File path: assets/images/icn_protein.png
  AssetGenImage get icnProtein =>
      const AssetGenImage('assets/images/icn_protein.png');

  /// File path: assets/images/icn_scan_meal.png
  AssetGenImage get icnScanMeal =>
      const AssetGenImage('assets/images/icn_scan_meal.png');

  /// File path: assets/images/icn_success_tick.png
  AssetGenImage get icnSuccessTick =>
      const AssetGenImage('assets/images/icn_success_tick.png');

  /// File path: assets/images/icn_tick.png
  AssetGenImage get icnTick =>
      const AssetGenImage('assets/images/icn_tick.png');

  /// File path: assets/images/icn_trainers.png
  AssetGenImage get icnTrainers =>
      const AssetGenImage('assets/images/icn_trainers.png');

  /// File path: assets/images/icn_upload.png
  AssetGenImage get icnUpload =>
      const AssetGenImage('assets/images/icn_upload.png');

  /// File path: assets/images/trainer_regis_bg.png
  AssetGenImage get trainerRegisBg =>
      const AssetGenImage('assets/images/trainer_regis_bg.png');

  /// File path: assets/images/weight_img.png
  AssetGenImage get weightImg =>
      const AssetGenImage('assets/images/weight_img.png');

  /// File path: assets/images/welcome.png
  AssetGenImage get welcome => const AssetGenImage('assets/images/welcome.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    aiImage,
    appleIcon,
    blurImg,
    googleIcon,
    human,
    icnApple,
    icnAppstore,
    icnBanner,
    icnCamera,
    icnCarbs,
    icnClock,
    icnDetectMealBg,
    icnDiet,
    icnFats,
    icnFitnessLovers,
    icnGoogle,
    icnGooglePlay,
    icnGrilledChicken,
    icnOatMeal,
    icnProtein,
    icnScanMeal,
    icnSuccessTick,
    icnTick,
    icnTrainers,
    icnUpload,
    trainerRegisBg,
    weightImg,
    welcome,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
