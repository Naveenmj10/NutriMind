// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyOtpViewStateCWProxy {
  VerifyOtpViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyOtpViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyOtpViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyOtpViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVerifyOtpViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVerifyOtpViewState.copyWith.fieldName(...)`
class _$VerifyOtpViewStateCWProxyImpl implements _$VerifyOtpViewStateCWProxy {
  const _$VerifyOtpViewStateCWProxyImpl(this._value);

  final VerifyOtpViewState _value;

  @override
  VerifyOtpViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyOtpViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyOtpViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyOtpViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return VerifyOtpViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $VerifyOtpViewStateCopyWith on VerifyOtpViewState {
  /// Returns a callable class that can be used as follows: `instanceOfVerifyOtpViewState.copyWith(...)` or like so:`instanceOfVerifyOtpViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VerifyOtpViewStateCWProxy get copyWith =>
      _$VerifyOtpViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `VerifyOtpViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyOtpViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  VerifyOtpViewState copyWithNull({bool isLoading = false}) {
    return VerifyOtpViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
