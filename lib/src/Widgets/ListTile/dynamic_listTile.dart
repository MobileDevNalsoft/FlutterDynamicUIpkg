import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_listTile.freezed.dart';
part 'dynamic_listTile.g.dart';

@freezed
class DynamicListTile with _$DynamicListTile {
  const factory DynamicListTile({
    Map<String, dynamic>? onTap,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? leading,
    Map<String, dynamic>? title,
    Map<String, dynamic>? subtitle,
    Map<String, dynamic>? trailing,
    @Default(false) bool isThreeLine,
    bool? dense,
    ListTileStyle? style,
    String? selectedColor,
    String? iconColor,
    String? textColor,
    DynamicEdgeInsets? contentPadding,
    @Default(true) bool enabled,
    @Default(false) bool selected,
    String? focusColor,
    String? hoverColor,
    @Default(false) bool autofocus,
    String? tileColor,
    String? selectedTileColor,
    bool? enableFeedback,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
  }) = _DynamicListTile;

  factory DynamicListTile.fromJson(Map<String, dynamic> json) =>
      _$DynamicListTileFromJson(json);
}
