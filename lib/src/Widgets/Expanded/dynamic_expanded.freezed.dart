// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_expanded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicExpanded _$DynamicExpandedFromJson(Map<String, dynamic> json) {
  return _DynamicExpanded.fromJson(json);
}

/// @nodoc
mixin _$DynamicExpanded {
  int get flex => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicExpandedCopyWith<DynamicExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicExpandedCopyWith<$Res> {
  factory $DynamicExpandedCopyWith(
          DynamicExpanded value, $Res Function(DynamicExpanded) then) =
      _$DynamicExpandedCopyWithImpl<$Res, DynamicExpanded>;
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class _$DynamicExpandedCopyWithImpl<$Res, $Val extends DynamicExpanded>
    implements $DynamicExpandedCopyWith<$Res> {
  _$DynamicExpandedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flex = null,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      flex: null == flex
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicExpandedImplCopyWith<$Res>
    implements $DynamicExpandedCopyWith<$Res> {
  factory _$$DynamicExpandedImplCopyWith(_$DynamicExpandedImpl value,
          $Res Function(_$DynamicExpandedImpl) then) =
      __$$DynamicExpandedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class __$$DynamicExpandedImplCopyWithImpl<$Res>
    extends _$DynamicExpandedCopyWithImpl<$Res, _$DynamicExpandedImpl>
    implements _$$DynamicExpandedImplCopyWith<$Res> {
  __$$DynamicExpandedImplCopyWithImpl(
      _$DynamicExpandedImpl _value, $Res Function(_$DynamicExpandedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flex = null,
    Object? child = freezed,
  }) {
    return _then(_$DynamicExpandedImpl(
      flex: null == flex
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicExpandedImpl implements _DynamicExpanded {
  const _$DynamicExpandedImpl(
      {this.flex = 1, final Map<String, dynamic>? child})
      : _child = child;

  factory _$DynamicExpandedImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicExpandedImplFromJson(json);

  @override
  @JsonKey()
  final int flex;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DynamicExpanded(flex: $flex, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicExpandedImpl &&
            (identical(other.flex, flex) || other.flex == flex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, flex, const DeepCollectionEquality().hash(_child));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicExpandedImplCopyWith<_$DynamicExpandedImpl> get copyWith =>
      __$$DynamicExpandedImplCopyWithImpl<_$DynamicExpandedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicExpandedImplToJson(
      this,
    );
  }
}

abstract class _DynamicExpanded implements DynamicExpanded {
  const factory _DynamicExpanded(
      {final int flex,
      final Map<String, dynamic>? child}) = _$DynamicExpandedImpl;

  factory _DynamicExpanded.fromJson(Map<String, dynamic> json) =
      _$DynamicExpandedImpl.fromJson;

  @override
  int get flex;
  @override
  Map<String, dynamic>? get child;
  @override
  @JsonKey(ignore: true)
  _$$DynamicExpandedImplCopyWith<_$DynamicExpandedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
