// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicButton _$DynamicButtonFromJson(Map<String, dynamic> json) {
  return _DynamicButton.fromJson(json);
}

/// @nodoc
mixin _$DynamicButton {
  bool get key => throw _privateConstructorUsedError;
  String? get onPressed => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;
  DynamicButtonStyle? get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicButtonCopyWith<DynamicButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicButtonCopyWith<$Res> {
  factory $DynamicButtonCopyWith(
          DynamicButton value, $Res Function(DynamicButton) then) =
      _$DynamicButtonCopyWithImpl<$Res, DynamicButton>;
  @useResult
  $Res call(
      {bool key,
      String? onPressed,
      Map<String, dynamic>? child,
      DynamicButtonStyle? style});

  $DynamicButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$DynamicButtonCopyWithImpl<$Res, $Val extends DynamicButton>
    implements $DynamicButtonCopyWith<$Res> {
  _$DynamicButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? onPressed = freezed,
    Object? child = freezed,
    Object? style = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as bool,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as String?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as DynamicButtonStyle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DynamicButtonStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $DynamicButtonStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DynamicButtonImplCopyWith<$Res>
    implements $DynamicButtonCopyWith<$Res> {
  factory _$$DynamicButtonImplCopyWith(
          _$DynamicButtonImpl value, $Res Function(_$DynamicButtonImpl) then) =
      __$$DynamicButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool key,
      String? onPressed,
      Map<String, dynamic>? child,
      DynamicButtonStyle? style});

  @override
  $DynamicButtonStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$$DynamicButtonImplCopyWithImpl<$Res>
    extends _$DynamicButtonCopyWithImpl<$Res, _$DynamicButtonImpl>
    implements _$$DynamicButtonImplCopyWith<$Res> {
  __$$DynamicButtonImplCopyWithImpl(
      _$DynamicButtonImpl _value, $Res Function(_$DynamicButtonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? onPressed = freezed,
    Object? child = freezed,
    Object? style = freezed,
  }) {
    return _then(_$DynamicButtonImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as bool,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as String?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as DynamicButtonStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicButtonImpl implements _DynamicButton {
  const _$DynamicButtonImpl(
      {this.key = false,
      this.onPressed,
      final Map<String, dynamic>? child,
      this.style})
      : _child = child;

  factory _$DynamicButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicButtonImplFromJson(json);

  @override
  @JsonKey()
  final bool key;
  @override
  final String? onPressed;
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
  final DynamicButtonStyle? style;

  @override
  String toString() {
    return 'DynamicButton(key: $key, onPressed: $onPressed, child: $child, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicButtonImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, onPressed,
      const DeepCollectionEquality().hash(_child), style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicButtonImplCopyWith<_$DynamicButtonImpl> get copyWith =>
      __$$DynamicButtonImplCopyWithImpl<_$DynamicButtonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicButtonImplToJson(
      this,
    );
  }
}

abstract class _DynamicButton implements DynamicButton {
  const factory _DynamicButton(
      {final bool key,
      final String? onPressed,
      final Map<String, dynamic>? child,
      final DynamicButtonStyle? style}) = _$DynamicButtonImpl;

  factory _DynamicButton.fromJson(Map<String, dynamic> json) =
      _$DynamicButtonImpl.fromJson;

  @override
  bool get key;
  @override
  String? get onPressed;
  @override
  Map<String, dynamic>? get child;
  @override
  DynamicButtonStyle? get style;
  @override
  @JsonKey(ignore: true)
  _$$DynamicButtonImplCopyWith<_$DynamicButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
