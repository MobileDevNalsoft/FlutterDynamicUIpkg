import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BorderRadius/dynamic_borderRadius.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BorderSide/dynamic_border_side.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_continuousRectangleBorder.freezed.dart';
part 'dynamic_continuousRectangleBorder.g.dart';

@freezed
class DynamicContinuousRectangleBorder with _$DynamicContinuousRectangleBorder {
  const factory DynamicContinuousRectangleBorder({
    DynamicBorderSide? borderSide,
    DynamicBorderRadius? borderRadius,
  }) = _DynamicContinuousRectangleBorder;

  factory DynamicContinuousRectangleBorder.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicContinuousRectangleBorderFromJson(json);
}

extension DynamicContinuousRectangleBorderParser
    on DynamicContinuousRectangleBorder {
  ContinuousRectangleBorder? parse(BuildContext context) {
    return ContinuousRectangleBorder(
        side: borderSide.parse(context), borderRadius: borderRadius.parse);
  }
}
