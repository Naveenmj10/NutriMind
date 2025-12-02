// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ResetPasswordViewStateCWProxy {
  ResetPasswordViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPasswordViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPasswordViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPasswordViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfResetPasswordViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfResetPasswordViewState.copyWith.fieldName(...)`
class _$ResetPasswordViewStateCWProxyImpl
    implements _$ResetPasswordViewStateCWProxy {
  const _$ResetPasswordViewStateCWProxyImpl(this._value);

  final ResetPasswordViewState _value;

  @override
  ResetPasswordViewState isLoading(bool? isLoading) =>
      this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPasswordViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPasswordViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPasswordViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return ResetPasswordViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $ResetPasswordViewStateCopyWith on ResetPasswordViewState {
  /// Returns a callable class that can be used as follows: `instanceOfResetPasswordViewState.copyWith(...)` or like so:`instanceOfResetPasswordViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ResetPasswordViewStateCWProxy get copyWith =>
      _$ResetPasswordViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `ResetPasswordViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPasswordViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  ResetPasswordViewState copyWithNull({bool isLoading = false}) {
    return ResetPasswordViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
