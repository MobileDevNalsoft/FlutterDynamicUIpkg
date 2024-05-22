// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_continuousRectangleBorder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicContinuousRectangleBorder _$DynamicContinuousRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _DynamicContinuousRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$DynamicContinuousRectangleBorder {
  DynamicBorderSide? get borderSide => throw _privateConstructorUsedError;
  DynamicBorderRadius? get borderRadius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicContinuousRectangleBorderCopyWith<DynamicContinuousRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicContinuousRectangleBorderCopyWith<$Res> {
  factory $DynamicContinuousRectangleBorderCopyWith(
          DynamicContinuousRectangleBorder value,
          $Res Function(DynamicContinuousRectangleBorder) then) =
      _$DynamicContinuousRectangleBorderCopyWithImpl<$Res,
          DynamicContinuousRectangleBorder>;
  @useResult
  $Res call({DynamicBorderSide? borderSide, DynamicBorderRadius? borderRadius});

  $DynamicBorderSideCopyWith<$Res>? get borderSide;
  $DynamicBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class _$DynamicContinuousRectangleBorderCopyWithImpl<$Res,
        $Val extends DynamicContinuousRectangleBorder>
    implements $DynamicContinuousRectangleBorderCopyWith<$Res> {
  _$DynamicContinuousRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderSide = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_value.copyWith(
      borderSide: freezed == borderSide
          ? _value.borderSide
          : borderSide // ignore: cast_nullable_to_non_nullable
              as DynamicBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as DynamicBorderRadius?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DynamicBorderSideCopyWith<$Res>? get borderSide {
    if (_value.borderSide == null) {
      return null;
    }

    return $DynamicBorderSideCopyWith<$Res>(_value.borderSide!, (value) {
      return _then(_value.copyWith(borderSide: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DynamicBorderRadiusCopyWith<$Res>? get borderRadius {
    if (_value.borderRadius == null) {
      return null;
    }

    return $DynamicBorderRadiusCopyWith<$Res>(_value.borderRadius!, (value) {
      return _then(_value.copyWith(borderRadius: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DynamicContinuousRectangleBorderImplCopyWith<$Res>
    implements $DynamicContinuousRectangleBorderCopyWith<$Res> {
  factory _$$DynamicContinuousRectangleBorderImplCopyWith(
          _$DynamicContinuousRectangleBorderImpl value,
          $Res Function(_$DynamicContinuousRectangleBorderImpl) then) =
      __$$DynamicContinuousRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DynamicBorderSide? borderSide, DynamicBorderRadius? borderRadius});

  @override
  $DynamicBorderSideCopyWith<$Res>? get borderSide;
  @override
  $DynamicBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class __$$DynamicContinuousRectangleBorderImplCopyWithImpl<$Res>
    extends _$DynamicContinuousRectangleBorderCopyWithImpl<$Res,
        _$DynamicContinuousRectangleBorderImpl>
    implements _$$DynamicContinuousRectangleBorderImplCopyWith<$Res> {
  __$$DynamicContinuousRectangleBorderImplCopyWithImpl(
      _$DynamicContinuousRectangleBorderImpl _value,
      $Res Function(_$DynamicContinuousRectangleBorderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderSide = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_$DynamicContinuousRectangleBorderImpl(
      borderSide: freezed == borderSide
          ? _value.borderSide
          : borderSide // ignore: cast_nullable_to_non_nullable
              as DynamicBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as DynamicBorderRadius?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicContinuousRectangleBorderImpl
    implements _DynamicContinuousRectangleBorder {
  const _$DynamicContinuousRectangleBorderImpl(
      {this.borderSide, this.borderRadius});

  factory _$DynamicContinuousRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DynamicContinuousRectangleBorderImplFromJson(json);

  @override
  final DynamicBorderSide? borderSide;
  @override
  final DynamicBorderRadius? borderRadius;

  @override
  String toString() {
    return 'DynamicContinuousRectangleBorder(borderSide: $borderSide, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicContinuousRectangleBorderImpl &&
            (identical(other.borderSide, borderSide) ||
                other.borderSide == borderSide) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, borderSide, borderRadius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicContinuousRectangleBorderImplCopyWith<
          _$DynamicContinuousRectangleBorderImpl>
      get copyWith => __$$DynamicContinuousRectangleBorderImplCopyWithImpl<
          _$DynamicContinuousRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicContinuousRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _DynamicContinuousRectangleBorder
    implements DynamicContinuousRectangleBorder {
  const factory _DynamicContinuousRectangleBorder(
          {final DynamicBorderSide? borderSide,
          final DynamicBorderRadius? borderRadius}) =
      _$DynamicContinuousRectangleBorderImpl;

  factory _DynamicContinuousRectangleBorder.fromJson(
          Map<String, dynamic> json) =
      _$DynamicContinuousRectangleBorderImpl.fromJson;

  @override
  DynamicBorderSide? get borderSide;
  @override
  DynamicBorderRadius? get borderRadius;
  @override
  @JsonKey(ignore: true)
  _$$DynamicContinuousRectangleBorderImplCopyWith<
          _$DynamicContinuousRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
