import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_formValidator.freezed.dart';
part 'dynamic_formValidator.g.dart';

@freezed
class DynamicFormFieldValidator with _$DynamicFormFieldValidator {
  const factory DynamicFormFieldValidator({
    required String rule,
    String? message,
  }) = _DynamicFormFieldValidator;

  factory DynamicFormFieldValidator.fromJson(Map<String, dynamic> json) =>
      _$DynamicFormFieldValidatorFromJson(json);
}
