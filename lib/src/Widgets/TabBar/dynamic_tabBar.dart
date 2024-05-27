import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/scrollPhysics_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_tabBar.freezed.dart';
part 'dynamic_tabBar.g.dart';

@freezed
class DynamicTabBar with _$DynamicTabBar {
  const factory DynamicTabBar({
    required List<Map<String, dynamic>> tabs,
    @Default(0) int initialIndex,
    @Default(false) bool isScrollable,
    DynamicEdgeInsets? padding,
    String? indicatorColor,
    @Default(true) bool automaticIndicatorColorAdjustment,
    @Default(2.0) double indicatorWeight,
    DynamicEdgeInsets? indicatorPadding,
    TabBarIndicatorSize? indicatorSize,
    String? labelColor,
    DynamicTextStyle? labelStyle,
    DynamicEdgeInsets? labelPadding,
    String? unselectedLabelColor,
    DynamicTextStyle? unselectedLabelStyle,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    bool? enableFeedback,
    DynamicScrollPhysics? physics,
    TabAlignment? tabAlignment,
  }) = _DynamicTabBar;

  factory DynamicTabBar.fromJson(Map<String, dynamic> json) =>
      _$DynamicTabBarFromJson(json);
}
