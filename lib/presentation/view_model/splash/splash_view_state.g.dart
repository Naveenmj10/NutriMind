// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SplashViewStateCWProxy {
  SplashViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SplashViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SplashViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  SplashViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSplashViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSplashViewState.copyWith.fieldName(...)`
class _$SplashViewStateCWProxyImpl implements _$SplashViewStateCWProxy {
  const _$SplashViewStateCWProxyImpl(this._value);

  final SplashViewState _value;

  @override
  SplashViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SplashViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SplashViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  SplashViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return SplashViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $SplashViewStateCopyWith on SplashViewState {
  /// Returns a callable class that can be used as follows: `instanceOfSplashViewState.copyWith(...)` or like so:`instanceOfSplashViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SplashViewStateCWProxy get copyWith => _$SplashViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `SplashViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SplashViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  SplashViewState copyWithNull({bool isLoading = false}) {
    return SplashViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
