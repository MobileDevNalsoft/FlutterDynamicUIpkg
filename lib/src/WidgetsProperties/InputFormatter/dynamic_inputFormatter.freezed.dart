// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_inputFormatter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicInputFormatter _$DynamicInputFormatterFromJson(
    Map<String, dynamic> json) {
  return _DynamicInputFormatter.fromJson(json);
}

/// @nodoc
mixin _$DynamicInputFormatter {
  InputFormatterType get type => throw _privateConstructorUsedError;
  String? get rule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicInputFormatterCopyWith<DynamicInputFormatter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicInputFormatterCopyWith<$Res> {
  factory $DynamicInputFormatterCopyWith(DynamicInputFormatter value,
          $Res Function(DynamicInputFormatter) then) =
      _$DynamicInputFormatterCopyWithImpl<$Res, DynamicInputFormatter>;
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class _$DynamicInputFormatterCopyWithImpl<$Res,
        $Val extends DynamicInputFormatter>
    implements $DynamicInputFormatterCopyWith<$Res> {
  _$DynamicInputFormatterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputFormatterType,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicInputFormatterImplCopyWith<$Res>
    implements $DynamicInputFormatterCopyWith<$Res> {
  factory _$$DynamicInputFormatterImplCopyWith(
          _$DynamicInputFormatterImpl value,
          $Res Function(_$DynamicInputFormatterImpl) then) =
      __$$DynamicInputFormatterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputFormatterType type, String? rule});
}

/// @nodoc
class __$$DynamicInputFormatterImplCopyWithImpl<$Res>
    extends _$DynamicInputFormatterCopyWithImpl<$Res,
        _$DynamicInputFormatterImpl>
    implements _$$DynamicInputFormatterImplCopyWith<$Res> {
  __$$DynamicInputFormatterImplCopyWithImpl(_$DynamicInputFormatterImpl _value,
      $Res Function(_$DynamicInputFormatterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rule = freezed,
  }) {
    return _then(_$DynamicInputFormatterImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputFormatterType,
      rule: freezed == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicInputFormatterImpl implements _DynamicInputFormatter {
  const _$DynamicInputFormatterImpl({required this.type, this.rule});

  factory _$DynamicInputFormatterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicInputFormatterImplFromJson(json);

  @override
  final InputFormatterType type;
  @override
  final String? rule;

  @override
  String toString() {
    return 'DynamicInputFormatter(type: $type, rule: $rule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicInputFormatterImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rule, rule) || other.rule == rule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, rule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicInputFormatterImplCopyWith<_$DynamicInputFormatterImpl>
      get copyWith => __$$DynamicInputFormatterImplCopyWithImpl<
          _$DynamicInputFormatterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicInputFormatterImplToJson(
      this,
    );
  }
}

abstract class _DynamicInputFormatter implements DynamicInputFormatter {
  const factory _DynamicInputFormatter(
      {required final InputFormatterType type,
      final String? rule}) = _$DynamicInputFormatterImpl;

  factory _DynamicInputFormatter.fromJson(Map<String, dynamic> json) =
      _$DynamicInputFormatterImpl.fromJson;

  @override
  InputFormatterType get type;
  @override
  String? get rule;
  @override
  @JsonKey(ignore: true)
  _$$DynamicInputFormatterImplCopyWith<_$DynamicInputFormatterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
