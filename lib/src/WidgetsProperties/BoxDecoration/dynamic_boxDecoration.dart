import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/Border/dynamic_border.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BorderRadius/dynamic_borderRadius.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BoxShadow/dynamic_boxShadow.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/DecorationImage/dynamic_decorationImage.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/Gradient/dynamic_gradient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_boxDecoration.freezed.dart';
part 'dynamic_boxDecoration.g.dart';

@freezed
class DynamicBoxDecoration with _$DynamicBoxDecoration {
  const factory DynamicBoxDecoration({
    String? color,
    double? opacity,
    BlendMode? backgroundBlendMode,
    List<DynamicBoxShadow?>? boxShadow,
    @Default(BoxShape.rectangle) BoxShape shape,
    DynamicBorder? border,
    DynamicBorderRadius? borderRadius,
    DynamicDecorationImage? image,
    DynamicGradient? gradient,
  }) = _DynamicBoxDecoration;

  factory DynamicBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$DynamicBoxDecorationFromJson(json);
}

extension DynamicBoxDecorationParser on DynamicBoxDecoration? {
  BoxDecoration? parse(BuildContext context) {
    return BoxDecoration(
      color: this?.color.toColor(context, opacity: this?.opacity ?? 1),
      backgroundBlendMode: this?.backgroundBlendMode,
      boxShadow: this?.boxShadow?.map((elem) => elem.parse(context)).toList(),
      shape: this?.shape ?? BoxShape.rectangle,
      border: this?.border?.parse(context),
      borderRadius: this?.borderRadius.parse,
      image: this?.image.parse,
      gradient: this?.gradient?.parse(context),
    );
  }
}
