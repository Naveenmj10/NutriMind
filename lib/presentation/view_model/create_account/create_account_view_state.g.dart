// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAccountViewStateCWProxy {
  CreateAccountViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAccountViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAccountViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAccountViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateAccountViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateAccountViewState.copyWith.fieldName(...)`
class _$CreateAccountViewStateCWProxyImpl
    implements _$CreateAccountViewStateCWProxy {
  const _$CreateAccountViewStateCWProxyImpl(this._value);

  final CreateAccountViewState _value;

  @override
  CreateAccountViewState isLoading(bool? isLoading) =>
      this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAccountViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAccountViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAccountViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return CreateAccountViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $CreateAccountViewStateCopyWith on CreateAccountViewState {
  /// Returns a callable class that can be used as follows: `instanceOfCreateAccountViewState.copyWith(...)` or like so:`instanceOfCreateAccountViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateAccountViewStateCWProxy get copyWith =>
      _$CreateAccountViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `CreateAccountViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAccountViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  CreateAccountViewState copyWithNull({bool isLoading = false}) {
    return CreateAccountViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
