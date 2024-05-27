// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_transform.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicTransform _$DynamicTransformFromJson(Map<String, dynamic> json) {
  return _DynamicTransform.fromJson(json);
}

/// @nodoc
mixin _$DynamicTransform {
  Map<String, dynamic> get child => throw _privateConstructorUsedError;
  List<double>? get xy => throw _privateConstructorUsedError;
  double? get radians => throw _privateConstructorUsedError;
  double? get scale => throw _privateConstructorUsedError;
  String get transform => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicTransformCopyWith<DynamicTransform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicTransformCopyWith<$Res> {
  factory $DynamicTransformCopyWith(
          DynamicTransform value, $Res Function(DynamicTransform) then) =
      _$DynamicTransformCopyWithImpl<$Res, DynamicTransform>;
  @useResult
  $Res call(
      {Map<String, dynamic> child,
      List<double>? xy,
      double? radians,
      double? scale,
      String transform});
}

/// @nodoc
class _$DynamicTransformCopyWithImpl<$Res, $Val extends DynamicTransform>
    implements $DynamicTransformCopyWith<$Res> {
  _$DynamicTransformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? xy = freezed,
    Object? radians = freezed,
    Object? scale = freezed,
    Object? transform = null,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      xy: freezed == xy
          ? _value.xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      radians: freezed == radians
          ? _value.radians
          : radians // ignore: cast_nullable_to_non_nullable
              as double?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
      transform: null == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicTransformImplCopyWith<$Res>
    implements $DynamicTransformCopyWith<$Res> {
  factory _$$DynamicTransformImplCopyWith(_$DynamicTransformImpl value,
          $Res Function(_$DynamicTransformImpl) then) =
      __$$DynamicTransformImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> child,
      List<double>? xy,
      double? radians,
      double? scale,
      String transform});
}

/// @nodoc
class __$$DynamicTransformImplCopyWithImpl<$Res>
    extends _$DynamicTransformCopyWithImpl<$Res, _$DynamicTransformImpl>
    implements _$$DynamicTransformImplCopyWith<$Res> {
  __$$DynamicTransformImplCopyWithImpl(_$DynamicTransformImpl _value,
      $Res Function(_$DynamicTransformImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? xy = freezed,
    Object? radians = freezed,
    Object? scale = freezed,
    Object? transform = null,
  }) {
    return _then(_$DynamicTransformImpl(
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      xy: freezed == xy
          ? _value._xy
          : xy // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      radians: freezed == radians
          ? _value.radians
          : radians // ignore: cast_nullable_to_non_nullable
              as double?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
      transform: null == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicTransformImpl implements _DynamicTransform {
  const _$DynamicTransformImpl(
      {required final Map<String, dynamic> child,
      final List<double>? xy,
      this.radians,
      this.scale,
      required this.transform})
      : _child = child,
        _xy = xy;

  factory _$DynamicTransformImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicTransformImplFromJson(json);

  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  final List<double>? _xy;
  @override
  List<double>? get xy {
    final value = _xy;
    if (value == null) return null;
    if (_xy is EqualUnmodifiableListView) return _xy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? radians;
  @override
  final double? scale;
  @override
  final String transform;

  @override
  String toString() {
    return 'DynamicTransform(child: $child, xy: $xy, radians: $radians, scale: $scale, transform: $transform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicTransformImpl &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            const DeepCollectionEquality().equals(other._xy, _xy) &&
            (identical(other.radians, radians) || other.radians == radians) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.transform, transform) ||
                other.transform == transform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_child),
      const DeepCollectionEquality().hash(_xy),
      radians,
      scale,
      transform);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicTransformImplCopyWith<_$DynamicTransformImpl> get copyWith =>
      __$$DynamicTransformImplCopyWithImpl<_$DynamicTransformImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicTransformImplToJson(
      this,
    );
  }
}

abstract class _DynamicTransform implements DynamicTransform {
  const factory _DynamicTransform(
      {required final Map<String, dynamic> child,
      final List<double>? xy,
      final double? radians,
      final double? scale,
      required final String transform}) = _$DynamicTransformImpl;

  factory _DynamicTransform.fromJson(Map<String, dynamic> json) =
      _$DynamicTransformImpl.fromJson;

  @override
  Map<String, dynamic> get child;
  @override
  List<double>? get xy;
  @override
  double? get radians;
  @override
  double? get scale;
  @override
  String get transform;
  @override
  @JsonKey(ignore: true)
  _$$DynamicTransformImplCopyWith<_$DynamicTransformImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
