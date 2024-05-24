import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dynamic_ui/src/Utils/textInputType_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/FieldValidator/dynamic_formValidator.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputDecoration/dynamic_inputDecoration.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputFormatter/dynamic_inputFormatter.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_textFormField.freezed.dart';
part 'dynamic_textFormField.g.dart';

@freezed
class DynamicTextFormField with _$DynamicTextFormField {
  const factory DynamicTextFormField({
    String? id,
    dynamic controller,
    dynamic focusNode,
    String? onChanged,
    String? validator,
    String? compareId,
    DynamicInputDecoration? decoration,
    String? initialValue,
    DynamicTextInputType? keyboardType,
    TextInputAction? textInputAction,
    @Default(TextCapitalization.none) TextCapitalization textCapitalization,
    DynamicTextStyle? style,
    @Default(TextAlign.start) TextAlign textAlign,
    DynamicTextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    @Default(false) bool readOnly,
    bool? showCursor,
    @Default(false) bool autofocus,
    @Default('•') String obscuringCharacter,
    int? maxLines,
    int? minLines,
    int? maxLength,
    bool? obscureText,
    @Default(true) bool autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    MaxLengthEnforcement? maxLengthEnforcement,
    @Default(false) bool expands,
    Brightness? keyboardAppearance,
    @Default(DynamicEdgeInsets(bottom: 20, top: 20, left: 20, right: 20))
    DynamicEdgeInsets scrollPadding,
    String? restorationId,
    @Default(true) bool enableIMEPersonalizedLearning,
    @Default(true) bool enableSuggestions,
    bool? enabled,
    @Default(2) double cursorWidth,
    double? cursorHeight,
    String? cursorColor,
    String? hintText,
    AutovalidateMode? autovalidateMode,
    @Default([]) List<DynamicInputFormatter> inputFormatters,
    @Default([]) List<DynamicFormFieldValidator> validatorRules,
  }) = _DynamicTextFormField;

  factory DynamicTextFormField.fromJson(Map<String, dynamic> json) =>
      _$DynamicTextFormFieldFromJson(json);
}
