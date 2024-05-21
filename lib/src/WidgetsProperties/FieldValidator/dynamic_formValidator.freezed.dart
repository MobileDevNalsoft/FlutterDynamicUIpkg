// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_formValidator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicFormFieldValidator _$DynamicFormFieldValidatorFromJson(
    Map<String, dynamic> json) {
  return _DynamicFormFieldValidator.fromJson(json);
}

/// @nodoc
mixin _$DynamicFormFieldValidator {
  String get rule => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicFormFieldValidatorCopyWith<DynamicFormFieldValidator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormFieldValidatorCopyWith<$Res> {
  factory $DynamicFormFieldValidatorCopyWith(DynamicFormFieldValidator value,
          $Res Function(DynamicFormFieldValidator) then) =
      _$DynamicFormFieldValidatorCopyWithImpl<$Res, DynamicFormFieldValidator>;
  @useResult
  $Res call({String rule, String? message});
}

/// @nodoc
class _$DynamicFormFieldValidatorCopyWithImpl<$Res,
        $Val extends DynamicFormFieldValidator>
    implements $DynamicFormFieldValidatorCopyWith<$Res> {
  _$DynamicFormFieldValidatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rule = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicFormFieldValidatorImplCopyWith<$Res>
    implements $DynamicFormFieldValidatorCopyWith<$Res> {
  factory _$$DynamicFormFieldValidatorImplCopyWith(
          _$DynamicFormFieldValidatorImpl value,
          $Res Function(_$DynamicFormFieldValidatorImpl) then) =
      __$$DynamicFormFieldValidatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rule, String? message});
}

/// @nodoc
class __$$DynamicFormFieldValidatorImplCopyWithImpl<$Res>
    extends _$DynamicFormFieldValidatorCopyWithImpl<$Res,
        _$DynamicFormFieldValidatorImpl>
    implements _$$DynamicFormFieldValidatorImplCopyWith<$Res> {
  __$$DynamicFormFieldValidatorImplCopyWithImpl(
      _$DynamicFormFieldValidatorImpl _value,
      $Res Function(_$DynamicFormFieldValidatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rule = null,
    Object? message = freezed,
  }) {
    return _then(_$DynamicFormFieldValidatorImpl(
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicFormFieldValidatorImpl implements _DynamicFormFieldValidator {
  const _$DynamicFormFieldValidatorImpl({required this.rule, this.message});

  factory _$DynamicFormFieldValidatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicFormFieldValidatorImplFromJson(json);

  @override
  final String rule;
  @override
  final String? message;

  @override
  String toString() {
    return 'DynamicFormFieldValidator(rule: $rule, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormFieldValidatorImpl &&
            (identical(other.rule, rule) || other.rule == rule) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rule, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicFormFieldValidatorImplCopyWith<_$DynamicFormFieldValidatorImpl>
      get copyWith => __$$DynamicFormFieldValidatorImplCopyWithImpl<
          _$DynamicFormFieldValidatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicFormFieldValidatorImplToJson(
      this,
    );
  }
}

abstract class _DynamicFormFieldValidator implements DynamicFormFieldValidator {
  const factory _DynamicFormFieldValidator(
      {required final String rule,
      final String? message}) = _$DynamicFormFieldValidatorImpl;

  factory _DynamicFormFieldValidator.fromJson(Map<String, dynamic> json) =
      _$DynamicFormFieldValidatorImpl.fromJson;

  @override
  String get rule;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DynamicFormFieldValidatorImplCopyWith<_$DynamicFormFieldValidatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
