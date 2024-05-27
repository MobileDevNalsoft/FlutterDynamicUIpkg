import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/scrollPhysics_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_tabBarView.freezed.dart';
part 'dynamic_tabBarView.g.dart';

@freezed
class DynamicTabBarView with _$DynamicTabBarView {
  const factory DynamicTabBarView({
    required List<Map<String, dynamic>> children,
    @Default(0) int initialIndex,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    DynamicScrollPhysics? physics,
    @Default(1.0) double viewportFraction,
    @Default(Clip.hardEdge) Clip clipBehavior,
  }) = _DynamicTabBarView;

  factory DynamicTabBarView.fromJson(Map<String, dynamic> json) =>
      _$DynamicTabBarViewFromJson(json);
}
