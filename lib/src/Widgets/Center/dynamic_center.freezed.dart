// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicCenter _$DynamicCenterFromJson(Map<String, dynamic> json) {
  return _DynamicCenter.fromJson(json);
}

/// @nodoc
mixin _$DynamicCenter {
  double? get widthFactor => throw _privateConstructorUsedError;
  double? get heightFactor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicCenterCopyWith<DynamicCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicCenterCopyWith<$Res> {
  factory $DynamicCenterCopyWith(
          DynamicCenter value, $Res Function(DynamicCenter) then) =
      _$DynamicCenterCopyWithImpl<$Res, DynamicCenter>;
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class _$DynamicCenterCopyWithImpl<$Res, $Val extends DynamicCenter>
    implements $DynamicCenterCopyWith<$Res> {
  _$DynamicCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicCenterImplCopyWith<$Res>
    implements $DynamicCenterCopyWith<$Res> {
  factory _$$DynamicCenterImplCopyWith(
          _$DynamicCenterImpl value, $Res Function(_$DynamicCenterImpl) then) =
      __$$DynamicCenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? widthFactor, double? heightFactor, Map<String, dynamic>? child});
}

/// @nodoc
class __$$DynamicCenterImplCopyWithImpl<$Res>
    extends _$DynamicCenterCopyWithImpl<$Res, _$DynamicCenterImpl>
    implements _$$DynamicCenterImplCopyWith<$Res> {
  __$$DynamicCenterImplCopyWithImpl(
      _$DynamicCenterImpl _value, $Res Function(_$DynamicCenterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthFactor = freezed,
    Object? heightFactor = freezed,
    Object? child = freezed,
  }) {
    return _then(_$DynamicCenterImpl(
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicCenterImpl
    with DiagnosticableTreeMixin
    implements _DynamicCenter {
  const _$DynamicCenterImpl(
      {this.widthFactor, this.heightFactor, final Map<String, dynamic>? child})
      : _child = child;

  factory _$DynamicCenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicCenterImplFromJson(json);

  @override
  final double? widthFactor;
  @override
  final double? heightFactor;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicCenter(widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DynamicCenter'))
      ..add(DiagnosticsProperty('widthFactor', widthFactor))
      ..add(DiagnosticsProperty('heightFactor', heightFactor))
      ..add(DiagnosticsProperty('child', child));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicCenterImpl &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, widthFactor, heightFactor,
      const DeepCollectionEquality().hash(_child));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicCenterImplCopyWith<_$DynamicCenterImpl> get copyWith =>
      __$$DynamicCenterImplCopyWithImpl<_$DynamicCenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicCenterImplToJson(
      this,
    );
  }
}

abstract class _DynamicCenter implements DynamicCenter {
  const factory _DynamicCenter(
      {final double? widthFactor,
      final double? heightFactor,
      final Map<String, dynamic>? child}) = _$DynamicCenterImpl;

  factory _DynamicCenter.fromJson(Map<String, dynamic> json) =
      _$DynamicCenterImpl.fromJson;

  @override
  double? get widthFactor;
  @override
  double? get heightFactor;
  @override
  Map<String, dynamic>? get child;
  @override
  @JsonKey(ignore: true)
  _$$DynamicCenterImplCopyWith<_$DynamicCenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
