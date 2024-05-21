import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputDecoration/dynamic_inputDecoration.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputFormatter/dynamic_inputFormatter.dart';
import 'package:flutter_dynamic_ui/src/Utils/textInputType_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_textField.freezed.dart';
part 'dynamic_textField.g.dart';

@freezed
class DynamicTextField with _$DynamicTextField {
  const factory DynamicTextField({
    DynamicInputDecoration? decoration,
    @Default('') String initialValue,
    DynamicTextInputType? keyboardType,
    TextInputAction? textInputAction,
    @Default(TextCapitalization.none) TextCapitalization textCapitalization,
    DynamicTextStyle? style,
    @Default(TextAlign.start) TextAlign textAlign,
    DynamicTextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    @Default(false) bool readOnly,
    bool? showCursor,
    @Default(false) expands,
    @Default(false) bool autofocus,
    @Default('•') String obscuringCharacter,
    int? maxLines,
    int? minLines,
    int? maxLength,
    @Default(false) bool obscureText,
    @Default(true) bool enableSuggestions,
    bool? enabled,
    @Default(2) double cursorWidth,
    double? cursorHeight,
    String? cursorColor,
    String? hintText,
    @Default([]) List<DynamicInputFormatter> inputFormatters,
  }) = _DynamicTextField;

  factory DynamicTextField.fromJson(Map<String, dynamic> json) =>
      _$DynamicTextFieldFromJson(json);
}
