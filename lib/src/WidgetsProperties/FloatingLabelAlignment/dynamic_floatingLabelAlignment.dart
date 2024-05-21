import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BorderSide/dynamic_border_side.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BoxContraints/dynamic_boxConstraints.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputBorder/dynamic_inputBorder.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_floatingLabelAlignment.freezed.dart';
part 'dynamic_floatingLabelAlignment.g.dart';

enum DynamicFloatingLabelAlignment {
  start,
  center;

  FloatingLabelAlignment get parse {
    switch (this) {
      case start:
        return FloatingLabelAlignment.start;
      case center:
        return FloatingLabelAlignment.center;
    }
  }
}

@freezed
class DynamicInputDecorationTheme with _$DynamicInputDecorationTheme {
  const factory DynamicInputDecorationTheme({
    DynamicTextStyle? labelStyle,
    DynamicTextStyle? floatingLabelStyle,
    DynamicTextStyle? helperStyle,
    int? helperMaxLines,
    DynamicTextStyle? hintStyle,
    DynamicTextStyle? errorStyle,
    int? errorMaxLines,
    FloatingLabelBehavior? floatingLabelBehavior,
    DynamicFloatingLabelAlignment? floatingLabelAlignment,
    @Default(false) bool isDense,
    DynamicEdgeInsets? contentPadding,
    @Default(false) bool isCollapsed,
    String? iconColor,
    DynamicTextStyle? prefixStyle,
    String? prefixIconColor,
    DynamicTextStyle? suffixStyle,
    String? suffixIconColor,
    DynamicTextStyle? counterStyle,
    @Default(false) bool filled,
    String? fillColor,
    DynamicBorderSide? activeIndicatorBorder,
    DynamicBorderSide? outlineBorder,
    String? focusColor,
    String? hoverColor,
    DynamicInputBorder? errorBorder,
    DynamicInputBorder? focusedBorder,
    DynamicInputBorder? focusedErrorBorder,
    DynamicInputBorder? disabledBorder,
    DynamicInputBorder? enabledBorder,
    DynamicInputBorder? border,
    @Default(false) bool alignLabelWithHint,
    DynamicBoxConstraints? constraints,
  }) = _DynamicInputDecorationTheme;

  factory DynamicInputDecorationTheme.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputDecorationThemeFromJson(json);
}

extension DynamicInputDecorationThemeParser on DynamicInputDecorationTheme? {
  InputDecorationTheme parse(BuildContext context) {
    return InputDecorationTheme(
      labelStyle: this?.labelStyle?.parse(context),
      floatingLabelStyle: this?.floatingLabelStyle?.parse(context),
      helperStyle: this?.helperStyle?.parse(context),
      helperMaxLines: this?.helperMaxLines,
      hintStyle: this?.hintStyle?.parse(context),
      errorStyle: this?.errorStyle?.parse(context),
      errorMaxLines: this?.errorMaxLines,
      floatingLabelBehavior:
          this?.floatingLabelBehavior ?? FloatingLabelBehavior.auto,
      floatingLabelAlignment:
          this?.floatingLabelAlignment?.parse ?? FloatingLabelAlignment.start,
      isDense: this?.isDense ?? false,
      contentPadding: this?.contentPadding?.parse,
      isCollapsed: this?.isCollapsed ?? false,
      iconColor: this?.iconColor.toColor(context),
      prefixStyle: this?.prefixStyle?.parse(context),
      prefixIconColor: this?.prefixIconColor.toColor(context),
      suffixStyle: this?.suffixStyle?.parse(context),
      suffixIconColor: this?.suffixIconColor.toColor(context),
      counterStyle: this?.counterStyle?.parse(context),
      filled: this?.filled ?? false,
      fillColor: this?.fillColor.toColor(context),
      activeIndicatorBorder: this?.activeIndicatorBorder.parse(context),
      outlineBorder: this?.outlineBorder.parse(context),
      focusColor: this?.focusColor.toColor(context),
      hoverColor: this?.hoverColor.toColor(context),
      errorBorder: this?.errorBorder?.parse(context),
      focusedBorder: this?.focusedBorder?.parse(context),
      focusedErrorBorder: this?.focusedErrorBorder?.parse(context),
      disabledBorder: this?.disabledBorder?.parse(context),
      enabledBorder: this?.enabledBorder?.parse(context),
      border: this?.border?.parse(context),
      alignLabelWithHint: this?.alignLabelWithHint ?? false,
      constraints: this?.constraints?.parse,
    );
  }
}
