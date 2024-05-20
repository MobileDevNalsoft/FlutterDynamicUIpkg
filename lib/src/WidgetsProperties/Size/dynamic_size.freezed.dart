// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicSize _$DynamicSizeFromJson(Map<String, dynamic> json) {
  return _DynamicSize.fromJson(json);
}

/// @nodoc
mixin _$DynamicSize {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicSizeCopyWith<DynamicSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicSizeCopyWith<$Res> {
  factory $DynamicSizeCopyWith(
          DynamicSize value, $Res Function(DynamicSize) then) =
      _$DynamicSizeCopyWithImpl<$Res, DynamicSize>;
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class _$DynamicSizeCopyWithImpl<$Res, $Val extends DynamicSize>
    implements $DynamicSizeCopyWith<$Res> {
  _$DynamicSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicSizeImplCopyWith<$Res>
    implements $DynamicSizeCopyWith<$Res> {
  factory _$$DynamicSizeImplCopyWith(
          _$DynamicSizeImpl value, $Res Function(_$DynamicSizeImpl) then) =
      __$$DynamicSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class __$$DynamicSizeImplCopyWithImpl<$Res>
    extends _$DynamicSizeCopyWithImpl<$Res, _$DynamicSizeImpl>
    implements _$$DynamicSizeImplCopyWith<$Res> {
  __$$DynamicSizeImplCopyWithImpl(
      _$DynamicSizeImpl _value, $Res Function(_$DynamicSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$DynamicSizeImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicSizeImpl implements _DynamicSize {
  const _$DynamicSizeImpl({required this.width, required this.height});

  factory _$DynamicSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicSizeImplFromJson(json);

  @override
  final double width;
  @override
  final double height;

  @override
  String toString() {
    return 'DynamicSize(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicSizeImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicSizeImplCopyWith<_$DynamicSizeImpl> get copyWith =>
      __$$DynamicSizeImplCopyWithImpl<_$DynamicSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicSizeImplToJson(
      this,
    );
  }
}

abstract class _DynamicSize implements DynamicSize {
  const factory _DynamicSize(
      {required final double width,
      required final double height}) = _$DynamicSizeImpl;

  factory _DynamicSize.fromJson(Map<String, dynamic> json) =
      _$DynamicSizeImpl.fromJson;

  @override
  double get width;
  @override
  double get height;
  @override
  @JsonKey(ignore: true)
  _$$DynamicSizeImplCopyWith<_$DynamicSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
