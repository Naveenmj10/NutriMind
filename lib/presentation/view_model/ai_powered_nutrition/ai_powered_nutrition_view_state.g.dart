// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_powered_nutrition_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AiPoweredNutritionViewStateCWProxy {
  AiPoweredNutritionViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AiPoweredNutritionViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AiPoweredNutritionViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  AiPoweredNutritionViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAiPoweredNutritionViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAiPoweredNutritionViewState.copyWith.fieldName(...)`
class _$AiPoweredNutritionViewStateCWProxyImpl
    implements _$AiPoweredNutritionViewStateCWProxy {
  const _$AiPoweredNutritionViewStateCWProxyImpl(this._value);

  final AiPoweredNutritionViewState _value;

  @override
  AiPoweredNutritionViewState isLoading(bool? isLoading) =>
      this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AiPoweredNutritionViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AiPoweredNutritionViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  AiPoweredNutritionViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return AiPoweredNutritionViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $AiPoweredNutritionViewStateCopyWith on AiPoweredNutritionViewState {
  /// Returns a callable class that can be used as follows: `instanceOfAiPoweredNutritionViewState.copyWith(...)` or like so:`instanceOfAiPoweredNutritionViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AiPoweredNutritionViewStateCWProxy get copyWith =>
      _$AiPoweredNutritionViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `AiPoweredNutritionViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AiPoweredNutritionViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  AiPoweredNutritionViewState copyWithNull({bool isLoading = false}) {
    return AiPoweredNutritionViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
