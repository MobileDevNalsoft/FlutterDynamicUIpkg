// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_rounded_rectangle_border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicRoundedRectangleBorder _$DynamicRoundedRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _DynamicRoundedRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$DynamicRoundedRectangleBorder {
  DynamicBorderSide? get side => throw _privateConstructorUsedError;
  DynamicBorderRadius? get borderRadius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicRoundedRectangleBorderCopyWith<DynamicRoundedRectangleBorder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicRoundedRectangleBorderCopyWith<$Res> {
  factory $DynamicRoundedRectangleBorderCopyWith(
          DynamicRoundedRectangleBorder value,
          $Res Function(DynamicRoundedRectangleBorder) then) =
      _$DynamicRoundedRectangleBorderCopyWithImpl<$Res,
          DynamicRoundedRectangleBorder>;
  @useResult
  $Res call({DynamicBorderSide? side, DynamicBorderRadius? borderRadius});

  $DynamicBorderSideCopyWith<$Res>? get side;
  $DynamicBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class _$DynamicRoundedRectangleBorderCopyWithImpl<$Res,
        $Val extends DynamicRoundedRectangleBorder>
    implements $DynamicRoundedRectangleBorderCopyWith<$Res> {
  _$DynamicRoundedRectangleBorderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_value.copyWith(
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as DynamicBorderSide?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as DynamicBorderRadius?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DynamicBorderSideCopyWith<$Res>? get side {
    if (_value.side == null) {
      return null;
    }

    return $DynamicBorderSideCopyWith<$Res>(_value.side!, (value) {
      return _then(_value.copyWith(side: value) as $Val);
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
abstract class _$$DynamicRoundedRectangleBorderImplCopyWith<$Res>
    implements $DynamicRoundedRectangleBorderCopyWith<$Res> {
  factory _$$DynamicRoundedRectangleBorderImplCopyWith(
          _$DynamicRoundedRectangleBorderImpl value,
          $Res Function(_$DynamicRoundedRectangleBorderImpl) then) =
      __$$DynamicRoundedRectangleBorderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DynamicBorderSide? side, DynamicBorderRadius? borderRadius});

  @override
  $DynamicBorderSideCopyWith<$Res>? get side;
  @override
  $DynamicBorderRadiusCopyWith<$Res>? get borderRadius;
}

/// @nodoc
class __$$DynamicRoundedRectangleBorderImplCopyWithImpl<$Res>
    extends _$DynamicRoundedRectangleBorderCopyWithImpl<$Res,
        _$DynamicRoundedRectangleBorderImpl>
    implements _$$DynamicRoundedRectangleBorderImplCopyWith<$Res> {
  __$$DynamicRoundedRectangleBorderImplCopyWithImpl(
      _$DynamicRoundedRectangleBorderImpl _value,
      $Res Function(_$DynamicRoundedRectangleBorderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = freezed,
    Object? borderRadius = freezed,
  }) {
    return _then(_$DynamicRoundedRectangleBorderImpl(
      side: freezed == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
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
class _$DynamicRoundedRectangleBorderImpl
    implements _DynamicRoundedRectangleBorder {
  const _$DynamicRoundedRectangleBorderImpl({this.side, this.borderRadius});

  factory _$DynamicRoundedRectangleBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DynamicRoundedRectangleBorderImplFromJson(json);

  @override
  final DynamicBorderSide? side;
  @override
  final DynamicBorderRadius? borderRadius;

  @override
  String toString() {
    return 'DynamicRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicRoundedRectangleBorderImpl &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicRoundedRectangleBorderImplCopyWith<
          _$DynamicRoundedRectangleBorderImpl>
      get copyWith => __$$DynamicRoundedRectangleBorderImplCopyWithImpl<
          _$DynamicRoundedRectangleBorderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicRoundedRectangleBorderImplToJson(
      this,
    );
  }
}

abstract class _DynamicRoundedRectangleBorder
    implements DynamicRoundedRectangleBorder {
  const factory _DynamicRoundedRectangleBorder(
          {final DynamicBorderSide? side,
          final DynamicBorderRadius? borderRadius}) =
      _$DynamicRoundedRectangleBorderImpl;

  factory _DynamicRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$DynamicRoundedRectangleBorderImpl.fromJson;

  @override
  DynamicBorderSide? get side;
  @override
  DynamicBorderRadius? get borderRadius;
  @override
  @JsonKey(ignore: true)
  _$$DynamicRoundedRectangleBorderImplCopyWith<
          _$DynamicRoundedRectangleBorderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
