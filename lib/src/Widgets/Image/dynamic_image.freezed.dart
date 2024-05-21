// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicImage _$DynamicImageFromJson(Map<String, dynamic> json) {
  return _DynamicImage.fromJson(json);
}

/// @nodoc
mixin _$DynamicImage {
  String get src => throw _privateConstructorUsedError;
  DynamicAlignment get alignment => throw _privateConstructorUsedError;
  DynamicImageType get imageType => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  BoxFit? get fit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicImageCopyWith<DynamicImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicImageCopyWith<$Res> {
  factory $DynamicImageCopyWith(
          DynamicImage value, $Res Function(DynamicImage) then) =
      _$DynamicImageCopyWithImpl<$Res, DynamicImage>;
  @useResult
  $Res call(
      {String src,
      DynamicAlignment alignment,
      DynamicImageType imageType,
      String? color,
      double? width,
      double? height,
      BoxFit? fit});
}

/// @nodoc
class _$DynamicImageCopyWithImpl<$Res, $Val extends DynamicImage>
    implements $DynamicImageCopyWith<$Res> {
  _$DynamicImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? alignment = null,
    Object? imageType = null,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? fit = freezed,
  }) {
    return _then(_value.copyWith(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as DynamicAlignment,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as DynamicImageType,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicImageImplCopyWith<$Res>
    implements $DynamicImageCopyWith<$Res> {
  factory _$$DynamicImageImplCopyWith(
          _$DynamicImageImpl value, $Res Function(_$DynamicImageImpl) then) =
      __$$DynamicImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String src,
      DynamicAlignment alignment,
      DynamicImageType imageType,
      String? color,
      double? width,
      double? height,
      BoxFit? fit});
}

/// @nodoc
class __$$DynamicImageImplCopyWithImpl<$Res>
    extends _$DynamicImageCopyWithImpl<$Res, _$DynamicImageImpl>
    implements _$$DynamicImageImplCopyWith<$Res> {
  __$$DynamicImageImplCopyWithImpl(
      _$DynamicImageImpl _value, $Res Function(_$DynamicImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? alignment = null,
    Object? imageType = null,
    Object? color = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? fit = freezed,
  }) {
    return _then(_$DynamicImageImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as DynamicAlignment,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as DynamicImageType,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicImageImpl implements _DynamicImage {
  const _$DynamicImageImpl(
      {required this.src,
      this.alignment = DynamicAlignment.center,
      this.imageType = DynamicImageType.network,
      this.color,
      this.width,
      this.height,
      this.fit});

  factory _$DynamicImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicImageImplFromJson(json);

  @override
  final String src;
  @override
  @JsonKey()
  final DynamicAlignment alignment;
  @override
  @JsonKey()
  final DynamicImageType imageType;
  @override
  final String? color;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final BoxFit? fit;

  @override
  String toString() {
    return 'DynamicImage(src: $src, alignment: $alignment, imageType: $imageType, color: $color, width: $width, height: $height, fit: $fit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicImageImpl &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.fit, fit) || other.fit == fit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, src, alignment, imageType, color, width, height, fit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicImageImplCopyWith<_$DynamicImageImpl> get copyWith =>
      __$$DynamicImageImplCopyWithImpl<_$DynamicImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicImageImplToJson(
      this,
    );
  }
}

abstract class _DynamicImage implements DynamicImage {
  const factory _DynamicImage(
      {required final String src,
      final DynamicAlignment alignment,
      final DynamicImageType imageType,
      final String? color,
      final double? width,
      final double? height,
      final BoxFit? fit}) = _$DynamicImageImpl;

  factory _DynamicImage.fromJson(Map<String, dynamic> json) =
      _$DynamicImageImpl.fromJson;

  @override
  String get src;
  @override
  DynamicAlignment get alignment;
  @override
  DynamicImageType get imageType;
  @override
  String? get color;
  @override
  double? get width;
  @override
  double? get height;
  @override
  BoxFit? get fit;
  @override
  @JsonKey(ignore: true)
  _$$DynamicImageImplCopyWith<_$DynamicImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
