// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ScanViewStateCWProxy {
  ScanViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ScanViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ScanViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ScanViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfScanViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfScanViewState.copyWith.fieldName(...)`
class _$ScanViewStateCWProxyImpl implements _$ScanViewStateCWProxy {
  const _$ScanViewStateCWProxyImpl(this._value);

  final ScanViewState _value;

  @override
  ScanViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ScanViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ScanViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ScanViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return ScanViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $ScanViewStateCopyWith on ScanViewState {
  /// Returns a callable class that can be used as follows: `instanceOfScanViewState.copyWith(...)` or like so:`instanceOfScanViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ScanViewStateCWProxy get copyWith => _$ScanViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `ScanViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ScanViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  ScanViewState copyWithNull({bool isLoading = false}) {
    return ScanViewState(isLoading: isLoading == true ? null : this.isLoading);
  }
}
