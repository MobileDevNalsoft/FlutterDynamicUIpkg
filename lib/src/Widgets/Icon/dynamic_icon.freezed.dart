// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicIcon _$DynamicIconFromJson(Map<String, dynamic> json) {
  return _DynamicIcon.fromJson(json);
}

/// @nodoc
mixin _$DynamicIcon {
  String get icon => throw _privateConstructorUsedError;
  IconType get iconType => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get semanticLabel => throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicIconCopyWith<DynamicIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicIconCopyWith<$Res> {
  factory $DynamicIconCopyWith(
          DynamicIcon value, $Res Function(DynamicIcon) then) =
      _$DynamicIconCopyWithImpl<$Res, DynamicIcon>;
  @useResult
  $Res call(
      {String icon,
      IconType iconType,
      double? size,
      String? color,
      String? semanticLabel,
      TextDirection? textDirection});
}

/// @nodoc
class _$DynamicIconCopyWithImpl<$Res, $Val extends DynamicIcon>
    implements $DynamicIconCopyWith<$Res> {
  _$DynamicIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? iconType = null,
    Object? size = freezed,
    Object? color = freezed,
    Object? semanticLabel = freezed,
    Object? textDirection = freezed,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      iconType: null == iconType
          ? _value.iconType
          : iconType // ignore: cast_nullable_to_non_nullable
              as IconType,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticLabel: freezed == semanticLabel
          ? _value.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicIconImplCopyWith<$Res>
    implements $DynamicIconCopyWith<$Res> {
  factory _$$DynamicIconImplCopyWith(
          _$DynamicIconImpl value, $Res Function(_$DynamicIconImpl) then) =
      __$$DynamicIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String icon,
      IconType iconType,
      double? size,
      String? color,
      String? semanticLabel,
      TextDirection? textDirection});
}

/// @nodoc
class __$$DynamicIconImplCopyWithImpl<$Res>
    extends _$DynamicIconCopyWithImpl<$Res, _$DynamicIconImpl>
    implements _$$DynamicIconImplCopyWith<$Res> {
  __$$DynamicIconImplCopyWithImpl(
      _$DynamicIconImpl _value, $Res Function(_$DynamicIconImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? iconType = null,
    Object? size = freezed,
    Object? color = freezed,
    Object? semanticLabel = freezed,
    Object? textDirection = freezed,
  }) {
    return _then(_$DynamicIconImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      iconType: null == iconType
          ? _value.iconType
          : iconType // ignore: cast_nullable_to_non_nullable
              as IconType,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      semanticLabel: freezed == semanticLabel
          ? _value.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicIconImpl implements _DynamicIcon {
  const _$DynamicIconImpl(
      {required this.icon,
      required this.iconType,
      this.size,
      this.color,
      this.semanticLabel,
      this.textDirection});

  factory _$DynamicIconImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicIconImplFromJson(json);

  @override
  final String icon;
  @override
  final IconType iconType;
  @override
  final double? size;
  @override
  final String? color;
  @override
  final String? semanticLabel;
  @override
  final TextDirection? textDirection;

  @override
  String toString() {
    return 'DynamicIcon(icon: $icon, iconType: $iconType, size: $size, color: $color, semanticLabel: $semanticLabel, textDirection: $textDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicIconImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconType, iconType) ||
                other.iconType == iconType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, icon, iconType, size, color, semanticLabel, textDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicIconImplCopyWith<_$DynamicIconImpl> get copyWith =>
      __$$DynamicIconImplCopyWithImpl<_$DynamicIconImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicIconImplToJson(
      this,
    );
  }
}

abstract class _DynamicIcon implements DynamicIcon {
  const factory _DynamicIcon(
      {required final String icon,
      required final IconType iconType,
      final double? size,
      final String? color,
      final String? semanticLabel,
      final TextDirection? textDirection}) = _$DynamicIconImpl;

  factory _DynamicIcon.fromJson(Map<String, dynamic> json) =
      _$DynamicIconImpl.fromJson;

  @override
  String get icon;
  @override
  IconType get iconType;
  @override
  double? get size;
  @override
  String? get color;
  @override
  String? get semanticLabel;
  @override
  TextDirection? get textDirection;
  @override
  @JsonKey(ignore: true)
  _$$DynamicIconImplCopyWith<_$DynamicIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
