// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_diet_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GeneratedDietViewStateCWProxy {
  GeneratedDietViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GeneratedDietViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GeneratedDietViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  GeneratedDietViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGeneratedDietViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGeneratedDietViewState.copyWith.fieldName(...)`
class _$GeneratedDietViewStateCWProxyImpl
    implements _$GeneratedDietViewStateCWProxy {
  const _$GeneratedDietViewStateCWProxyImpl(this._value);

  final GeneratedDietViewState _value;

  @override
  GeneratedDietViewState isLoading(bool? isLoading) =>
      this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GeneratedDietViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GeneratedDietViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  GeneratedDietViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return GeneratedDietViewState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $GeneratedDietViewStateCopyWith on GeneratedDietViewState {
  /// Returns a callable class that can be used as follows: `instanceOfGeneratedDietViewState.copyWith(...)` or like so:`instanceOfGeneratedDietViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GeneratedDietViewStateCWProxy get copyWith =>
      _$GeneratedDietViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `GeneratedDietViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GeneratedDietViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  GeneratedDietViewState copyWithNull({bool isLoading = false}) {
    return GeneratedDietViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
