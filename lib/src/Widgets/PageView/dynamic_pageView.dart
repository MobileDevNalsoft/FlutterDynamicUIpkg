import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/scrollPhysics_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_pageView.freezed.dart';
part 'dynamic_pageView.g.dart';

@freezed
class DynamicPageView with _$DynamicPageView {
  const factory DynamicPageView({
    @Default(Axis.horizontal) Axis scrollDirection,
    @Default(false) bool reverse,
    dynamic controller,
    DynamicScrollPhysics? physics,
    @Default(true) bool pageSnapping,
    String? onPageChanged,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(false) bool allowImplicitScrolling,
    String? restorationId,
    @Default(Clip.hardEdge) Clip clipBehavior,
    @Default(true) bool padEnds,
    @Default(0) int initialPage,
    @Default(true) keepPage,
    @Default(1.0) double viewportFraction,
    @Default([]) List<Map<String, dynamic>> children,
    String? findChildIndexCallback,
  }) = _DynamicPageView;

  factory DynamicPageView.fromJson(Map<String, dynamic> json) =>
      _$DynamicPageViewFromJson(json);
}
