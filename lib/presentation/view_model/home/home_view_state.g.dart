// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeViewStateCWProxy {
  HomeViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeViewState.copyWith.fieldName(...)`
class _$HomeViewStateCWProxyImpl implements _$HomeViewStateCWProxy {
  const _$HomeViewStateCWProxyImpl(this._value);

  final HomeViewState _value;

  @override
  HomeViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return HomeViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $HomeViewStateCopyWith on HomeViewState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeViewState.copyWith(...)` or like so:`instanceOfHomeViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeViewStateCWProxy get copyWith => _$HomeViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `HomeViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  HomeViewState copyWithNull({bool isLoading = false}) {
    return HomeViewState(isLoading: isLoading == true ? null : this.isLoading);
  }
}
