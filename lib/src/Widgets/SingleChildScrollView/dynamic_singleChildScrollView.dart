import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/scrollPhysics_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_singleChildScrollView.freezed.dart';
part 'dynamic_singleChildScrollView.g.dart';

@freezed
class DynamicSingleChildScrollView with _$DynamicSingleChildScrollView {
  const factory DynamicSingleChildScrollView({
    @Default(Axis.vertical) Axis scrollDirection,
    @Default(false) bool reverse,
    DynamicEdgeInsets? padding,
    bool? primary,
    DynamicScrollPhysics? physics,
    Map<String, dynamic>? child,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(Clip.hardEdge) Clip clipBehavior,
    String? restorationId,
    @Default(ScrollViewKeyboardDismissBehavior.manual)
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
  }) = _DynamicSingleChildScrollView;

  factory DynamicSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$DynamicSingleChildScrollViewFromJson(json);
}
