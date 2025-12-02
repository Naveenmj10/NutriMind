// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChangePasswordViewStateCWProxy {
  ChangePasswordViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChangePasswordViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChangePasswordViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ChangePasswordViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChangePasswordViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChangePasswordViewState.copyWith.fieldName(...)`
class _$ChangePasswordViewStateCWProxyImpl
    implements _$ChangePasswordViewStateCWProxy {
  const _$ChangePasswordViewStateCWProxyImpl(this._value);

  final ChangePasswordViewState _value;

  @override
  ChangePasswordViewState isLoading(bool? isLoading) =>
      this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChangePasswordViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChangePasswordViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ChangePasswordViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return ChangePasswordViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $ChangePasswordViewStateCopyWith on ChangePasswordViewState {
  /// Returns a callable class that can be used as follows: `instanceOfChangePasswordViewState.copyWith(...)` or like so:`instanceOfChangePasswordViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChangePasswordViewStateCWProxy get copyWith =>
      _$ChangePasswordViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `ChangePasswordViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChangePasswordViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  ChangePasswordViewState copyWithNull({bool isLoading = false}) {
    return ChangePasswordViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
