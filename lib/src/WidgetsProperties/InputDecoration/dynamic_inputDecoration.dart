import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BoxContraints/dynamic_boxConstraints.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/FloatingLabelAlignment/dynamic_floatingLabelAlignment.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputBorder/dynamic_inputBorder.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_inputDecoration.freezed.dart';
part 'dynamic_inputDecoration.g.dart';

@freezed
class DynamicInputDecoration with _$DynamicInputDecoration {
  const factory DynamicInputDecoration({
    Map<String, dynamic>? icon,
    String? iconColor,
    Map<String, dynamic>? label,
    String? labelText,
    DynamicTextStyle? labelStyle,
    DynamicTextStyle? floatingLabelStyle,
    String? helperText,
    DynamicTextStyle? helperStyle,
    String? hintText,
    DynamicTextStyle? hintStyle,
    int? helperMaxLines,
    TextDirection? hintTextDirection,
    int? hintMaxLines,
    String? errorText,
    DynamicTextStyle? errorStyle,
    int? errorMaxLines,
    FloatingLabelBehavior? floatingLabelBehavior,
    DynamicFloatingLabelAlignment? floatingLabelAlignment,
    @Default(false) bool isCollapsed,
    @Default(false) bool isDense,
    DynamicEdgeInsets? contentPadding,
    Map<String, dynamic>? prefixIcon,
    DynamicBoxConstraints? prefixIconConstraints,
    Map<String, dynamic>? prefix,
    String? prefixText,
    DynamicTextStyle? prefixStyle,
    String? prefixIconColor,
    Map<String, dynamic>? suffix,
    Map<String, dynamic>? suffixIcon,
    DynamicBoxConstraints? suffixIconConstraints,
    String? suffixText,
    DynamicTextStyle? suffixStyle,
    String? suffixIconColor,
    Map<String, dynamic>? counter,
    String? counterText,
    DynamicTextStyle? counterStyle,
    bool? filled,
    String? fillColor,
    String? hoverColor,
    String? focusColor,
    DynamicInputBorder? errorBorder,
    DynamicInputBorder? focusedBorder,
    DynamicInputBorder? focusedErrorBorder,
    DynamicInputBorder? disabledBorder,
    DynamicInputBorder? enabledBorder,
    DynamicInputBorder? border,
    @Default(true) bool enabled,
    String? semanticCounterText,
    @Default(false) bool alignLabelWithHint,
    DynamicBoxConstraints? constraints,
  }) = _DynamicInputDecoration;

  factory DynamicInputDecoration.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputDecorationFromJson(json);
}

extension DynamicInputDecorationParser on DynamicInputDecoration? {
  InputDecoration parse(BuildContext context) {
    return InputDecoration(
      icon: JsonToWidget.fromJson(this?.icon, context),
      iconColor: this?.iconColor.toColor(context),
      label: JsonToWidget.fromJson(this?.label, context),
      labelText: this?.labelText,
      labelStyle: this?.labelStyle?.parse(context),
      floatingLabelStyle: this?.floatingLabelStyle?.parse(context),
      helperText: this?.helperText,
      helperStyle: this?.helperStyle?.parse(context),
      helperMaxLines: this?.helperMaxLines,
      hintText: this?.hintText,
      hintStyle: this?.hintStyle?.parse(context),
      hintTextDirection: this?.hintTextDirection,
      hintMaxLines: this?.hintMaxLines,
      errorText: this?.errorText,
      errorStyle: this?.errorStyle?.parse(context),
      errorMaxLines: this?.errorMaxLines,
      floatingLabelBehavior: this?.floatingLabelBehavior,
      floatingLabelAlignment: this?.floatingLabelAlignment?.parse,
      isCollapsed: this?.isCollapsed ?? false,
      isDense: this?.isDense,
      contentPadding: this?.contentPadding?.parse,
      prefixIcon: JsonToWidget.fromJson(this?.prefixIcon, context),
      prefixIconConstraints: this?.prefixIconConstraints?.parse,
      prefix: JsonToWidget.fromJson(this?.prefix, context),
      prefixText: this?.prefixText,
      prefixStyle: this?.prefixStyle?.parse(context),
      prefixIconColor: this?.prefixIconColor?.toColor(context),
      suffixIcon: JsonToWidget.fromJson(this?.suffixIcon, context),
      suffix: JsonToWidget.fromJson(this?.suffix, context),
      suffixText: this?.suffixText,
      suffixStyle: this?.suffixStyle?.parse(context),
      suffixIconColor: this?.suffixIconColor?.toColor(context),
      suffixIconConstraints: this?.suffixIconConstraints?.parse,
      counter: JsonToWidget.fromJson(this?.counter, context),
      counterText: this?.counterText,
      counterStyle: this?.counterStyle?.parse(context),
      filled: this?.filled,
      fillColor: this?.fillColor.toColor(context),
      focusColor: this?.focusColor.toColor(context),
      hoverColor: this?.hoverColor.toColor(context),
      errorBorder: this?.errorBorder?.parse(context),
      focusedBorder: this?.focusedBorder?.parse(context),
      focusedErrorBorder: this?.focusedErrorBorder?.parse(context),
      disabledBorder: this?.disabledBorder?.parse(context),
      enabledBorder: this?.enabledBorder?.parse(context),
      border: this?.border?.parse(context),
      enabled: this?.enabled ?? true,
      semanticCounterText: this?.semanticCounterText,
      alignLabelWithHint: this?.alignLabelWithHint,
      constraints: this?.constraints?.parse,
    );
  }
}
