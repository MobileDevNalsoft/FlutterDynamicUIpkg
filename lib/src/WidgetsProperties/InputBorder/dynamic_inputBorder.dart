import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BorderRadius/dynamic_borderRadius.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/Gradient/dynamic_gradient.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/OutlineInputBorder/dynamic_outlineInputBorder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_inputBorder.freezed.dart';
part 'dynamic_inputBorder.g.dart';

enum DynamicInputBorderType { none, underlineInputBorder, outlineInputBorder }

@freezed
class DynamicInputBorder with _$DynamicInputBorder {
  const factory DynamicInputBorder({
    @Default(DynamicInputBorderType.underlineInputBorder)
    DynamicInputBorderType type,
    DynamicBorderRadius? borderRadius,
    @Default(4.0) double gapPadding,
    @Default(0.0) double width,
    String? color,
    DynamicGradient? gradient,
  }) = _DynamicInputBorder;

  factory DynamicInputBorder.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputBorderFromJson(json);
}

extension DynamicInputBorderParser on DynamicInputBorder {
  InputBorder parse(BuildContext context) {
    switch (type) {
      case DynamicInputBorderType.none:
        return InputBorder.none;
      case DynamicInputBorderType.underlineInputBorder:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: color?.toColor(context) ?? Colors.black,
            width: width,
          ),
          borderRadius: borderRadius.parse,
        );
      case DynamicInputBorderType.outlineInputBorder:
        return DynamicOutlineInputBorder(
          width: width,
          borderRadius: borderRadius.parse,
          gapPadding: gapPadding,
          color: color?.toColor(context) ?? Colors.black,
          gradient: gradient?.parse(context),
        );
    }
  }
}
