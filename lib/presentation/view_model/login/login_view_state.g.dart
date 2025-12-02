// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoginViewStateCWProxy {
  LoginViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLoginViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLoginViewState.copyWith.fieldName(...)`
class _$LoginViewStateCWProxyImpl implements _$LoginViewStateCWProxy {
  const _$LoginViewStateCWProxyImpl(this._value);

  final LoginViewState _value;

  @override
  LoginViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return LoginViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $LoginViewStateCopyWith on LoginViewState {
  /// Returns a callable class that can be used as follows: `instanceOfLoginViewState.copyWith(...)` or like so:`instanceOfLoginViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoginViewStateCWProxy get copyWith => _$LoginViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `LoginViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  LoginViewState copyWithNull({bool isLoading = false}) {
    return LoginViewState(isLoading: isLoading == true ? null : this.isLoading);
  }
}
