// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_stack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicStack _$DynamicStackFromJson(Map<String, dynamic> json) {
  return _DynamicStack.fromJson(json);
}

/// @nodoc
mixin _$DynamicStack {
  DynamicAlignmentDirectional get alignment =>
      throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;
  StackFit get fit => throw _privateConstructorUsedError;
  TextDirection? get textDirection => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicStackCopyWith<DynamicStack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicStackCopyWith<$Res> {
  factory $DynamicStackCopyWith(
          DynamicStack value, $Res Function(DynamicStack) then) =
      _$DynamicStackCopyWithImpl<$Res, DynamicStack>;
  @useResult
  $Res call(
      {DynamicAlignmentDirectional alignment,
      Clip clipBehavior,
      StackFit fit,
      TextDirection? textDirection,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class _$DynamicStackCopyWithImpl<$Res, $Val extends DynamicStack>
    implements $DynamicStackCopyWith<$Res> {
  _$DynamicStackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = null,
    Object? clipBehavior = null,
    Object? fit = null,
    Object? textDirection = freezed,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as DynamicAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as StackFit,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicStackImplCopyWith<$Res>
    implements $DynamicStackCopyWith<$Res> {
  factory _$$DynamicStackImplCopyWith(
          _$DynamicStackImpl value, $Res Function(_$DynamicStackImpl) then) =
      __$$DynamicStackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DynamicAlignmentDirectional alignment,
      Clip clipBehavior,
      StackFit fit,
      TextDirection? textDirection,
      List<Map<String, dynamic>> children});
}

/// @nodoc
class __$$DynamicStackImplCopyWithImpl<$Res>
    extends _$DynamicStackCopyWithImpl<$Res, _$DynamicStackImpl>
    implements _$$DynamicStackImplCopyWith<$Res> {
  __$$DynamicStackImplCopyWithImpl(
      _$DynamicStackImpl _value, $Res Function(_$DynamicStackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alignment = null,
    Object? clipBehavior = null,
    Object? fit = null,
    Object? textDirection = freezed,
    Object? children = null,
  }) {
    return _then(_$DynamicStackImpl(
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as DynamicAlignmentDirectional,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as StackFit,
      textDirection: freezed == textDirection
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicStackImpl implements _DynamicStack {
  const _$DynamicStackImpl(
      {this.alignment = DynamicAlignmentDirectional.topStart,
      this.clipBehavior = Clip.hardEdge,
      this.fit = StackFit.loose,
      this.textDirection,
      final List<Map<String, dynamic>> children = const []})
      : _children = children;

  factory _$DynamicStackImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicStackImplFromJson(json);

  @override
  @JsonKey()
  final DynamicAlignmentDirectional alignment;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  @JsonKey()
  final StackFit fit;
  @override
  final TextDirection? textDirection;
  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'DynamicStack(alignment: $alignment, clipBehavior: $clipBehavior, fit: $fit, textDirection: $textDirection, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicStackImpl &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, alignment, clipBehavior, fit,
      textDirection, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicStackImplCopyWith<_$DynamicStackImpl> get copyWith =>
      __$$DynamicStackImplCopyWithImpl<_$DynamicStackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicStackImplToJson(
      this,
    );
  }
}

abstract class _DynamicStack implements DynamicStack {
  const factory _DynamicStack(
      {final DynamicAlignmentDirectional alignment,
      final Clip clipBehavior,
      final StackFit fit,
      final TextDirection? textDirection,
      final List<Map<String, dynamic>> children}) = _$DynamicStackImpl;

  factory _DynamicStack.fromJson(Map<String, dynamic> json) =
      _$DynamicStackImpl.fromJson;

  @override
  DynamicAlignmentDirectional get alignment;
  @override
  Clip get clipBehavior;
  @override
  StackFit get fit;
  @override
  TextDirection? get textDirection;
  @override
  List<Map<String, dynamic>> get children;
  @override
  @JsonKey(ignore: true)
  _$$DynamicStackImplCopyWith<_$DynamicStackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
