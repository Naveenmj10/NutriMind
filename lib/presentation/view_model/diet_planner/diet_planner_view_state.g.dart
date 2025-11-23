// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diet_planner_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DietPlannerViewStateCWProxy {
  DietPlannerViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DietPlannerViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DietPlannerViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  DietPlannerViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDietPlannerViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDietPlannerViewState.copyWith.fieldName(...)`
class _$DietPlannerViewStateCWProxyImpl
    implements _$DietPlannerViewStateCWProxy {
  const _$DietPlannerViewStateCWProxyImpl(this._value);

  final DietPlannerViewState _value;

  @override
  DietPlannerViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DietPlannerViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DietPlannerViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  DietPlannerViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return DietPlannerViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $DietPlannerViewStateCopyWith on DietPlannerViewState {
  /// Returns a callable class that can be used as follows: `instanceOfDietPlannerViewState.copyWith(...)` or like so:`instanceOfDietPlannerViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DietPlannerViewStateCWProxy get copyWith =>
      _$DietPlannerViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `DietPlannerViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DietPlannerViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  DietPlannerViewState copyWithNull({bool isLoading = false}) {
    return DietPlannerViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
