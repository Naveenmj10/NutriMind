// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_dashboard_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

// import 'package:nutri_mind/presentation/view_model/dashboard/health_dashboard_view_state.dart';

// import 'package:copy_with_extension/copy_with_extension.dart';
//
// import 'health_dashboard_view_state.dart';

abstract class _$HealthDashboardViewStateCWProxy {
  HealthDashboardViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  HealthDashboardViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeViewState.copyWith.fieldName(...)`
class _$HealthDashboardViewStateCWProxyImpl implements _$HealthDashboardViewStateCWProxy {
  const _$HealthDashboardViewStateCWProxyImpl(this._value);

  final HealthDashboardViewState _value;

  @override
  HealthDashboardViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  HealthDashboardViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return HealthDashboardViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
      // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $HealthDashboardViewStateCopyWith on HealthDashboardViewState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeViewState.copyWith(...)` or like so:`instanceOfHomeViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HealthDashboardViewStateCWProxy get copyWith => _$HealthDashboardViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  HealthDashboardViewState copyWithNull({bool isLoading = false}) {
    return HealthDashboardViewState(isLoading: isLoading == true ? null : this.isLoading);
  }
}
