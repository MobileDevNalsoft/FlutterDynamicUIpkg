import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_alertDialog.freezed.dart';
part 'dynamic_alertDialog.g.dart';

@freezed
class DynamicAlertDialog with _$DynamicAlertDialog {
  const factory DynamicAlertDialog({
    Map<String, dynamic>? icon,
    DynamicEdgeInsets? iconPadding,
    String? iconColor,
    Map<String, dynamic>? title,
    DynamicEdgeInsets? titlePadding,
    DynamicTextStyle? titleTextStyle,
    Map<String, dynamic>? content,
    DynamicEdgeInsets? contentPadding,
    DynamicTextStyle? contentTextStyle,
    List<Map<String, dynamic>>? actions,
    DynamicEdgeInsets? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    OverflowBarAlignment? actionsOverflowAlignment,
    VerticalDirection? actionsOverflowDirection,
    double? actionsOverflowButtonSpacing,
    DynamicEdgeInsets? buttonPadding,
    String? backgroundColor,
    double? elevation,
    String? semanticLabel,
    @Default(DynamicEdgeInsets(left: 40, right: 40, top: 24, bottom: 24))
    DynamicEdgeInsets insetPadding,
    @Default(Clip.none) Clip clipBehavior,
    @Default(false) bool scrollable,
  }) = _DynamicAlertDialog;

  factory DynamicAlertDialog.fromJson(Map<String, dynamic> json) =>
      _$DynamicAlertDialogFromJson(json);
}
