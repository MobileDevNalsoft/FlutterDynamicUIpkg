import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Button/dynamic_border_side.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Button/dynamic_rounded_rectangle_border.dart';
import 'package:flutter_dynamic_ui/src/Utils/button_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/Size/dynamic_size.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_buttonStyle.freezed.dart';
part 'dynamic_buttonStyle.g.dart';

@freezed
class DynamicButtonStyle with _$DynamicButtonStyle {
  const factory DynamicButtonStyle(
      {String? alignment,
      DynamicEdgeInsets? padding,
      String? backgroundColor,
      String? foregroundColor,
      double? elevation,
      DynamicSize? fixedSize,
      DynamicSize? minimumSize,
      DynamicSize? maximumSize,
      DynamicRoundedRectangleBorder? shape,
      DynamicBorderSide? side}) = _DynamicButtonStyle;

  factory DynamicButtonStyle.fromJson(Map<String, dynamic> json) =>
      _$DynamicButtonStyleFromJson(json);
}

extension DynamicButtonStyleParser on DynamicButtonStyle {
  ButtonStyle parseElevated(BuildContext context) {
    return ElevatedButton.styleFrom(
        foregroundColor: foregroundColor?.toColor(context),
        backgroundColor: backgroundColor.toColor(context),
        elevation: elevation,
        minimumSize: minimumSize?.parse,
        fixedSize: fixedSize?.parse,
        maximumSize: maximumSize?.parse,
        shape: shape.parse(context),
        padding: padding.parse,
        alignment: alignment.alignment());
  }

  ButtonStyle parseText(BuildContext context) {
    return TextButton.styleFrom(
        foregroundColor: foregroundColor.toColor(context),
        backgroundColor: backgroundColor.toColor(context),
        elevation: elevation,
        minimumSize: minimumSize?.parse,
        fixedSize: fixedSize?.parse,
        maximumSize: maximumSize?.parse,
        shape: shape.parse(context),
        padding: padding.parse,
        alignment: alignment.alignment());
  }

  ButtonStyle parseIcon(BuildContext context) {
    return IconButton.styleFrom(
        foregroundColor: foregroundColor.toColor(context),
        backgroundColor: backgroundColor.toColor(context),
        minimumSize: minimumSize?.parse,
        fixedSize: fixedSize?.parse,
        maximumSize: maximumSize?.parse,
        shape: shape.parse(context),
        padding: padding.parse,
        alignment: alignment.alignment());
  }
}
