import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/Rect/dynamic_rect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_positioned.freezed.dart';
part 'dynamic_positioned.g.dart';

/*
* TODO :: Add support for fromRelativeRect
*  enum DynamicPositionedType { directional, fill, fromRect, fromRelativeRect}
*/

enum DynamicPositionedType { directional, fill, fromRect }

@freezed
class DynamicPositioned with _$DynamicPositioned {
  const factory DynamicPositioned({
    DynamicPositionedType? positionedType,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
    double? start,
    double? end,
    @Default(TextDirection.ltr) TextDirection textDirection,
    DynamicRect? rect,
    Map<String, dynamic>? child,
  }) = _DynamicPositioned;

  factory DynamicPositioned.fromJson(Map<String, dynamic> json) =>
      _$DynamicPositionedFromJson(json);
}
