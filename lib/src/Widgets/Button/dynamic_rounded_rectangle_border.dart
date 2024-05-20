import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Button/dynamic_border_radius.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Button/dynamic_border_side.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_rounded_rectangle_border.freezed.dart';
part 'dynamic_rounded_rectangle_border.g.dart';

@freezed
class DynamicRoundedRectangleBorder with _$DynamicRoundedRectangleBorder {
  const factory DynamicRoundedRectangleBorder({
    DynamicBorderSide? side,
    DynamicBorderRadius? borderRadius,
  }) = _DynamicRoundedRectangleBorder;

  factory DynamicRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$DynamicRoundedRectangleBorderFromJson(json);
}

extension DynamicRoundedRectangleBorderParser
    on DynamicRoundedRectangleBorder? {
  RoundedRectangleBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: this?.side.parse(context) ?? BorderSide.none,
      borderRadius: this?.borderRadius.parse ?? BorderRadius.zero,
    );
  }
}
