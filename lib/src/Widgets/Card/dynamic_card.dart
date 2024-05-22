import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/RoundedRectangleBorder/dynamic_rounded_rectangle_border.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_card.freezed.dart';
part 'dynamic_card.g.dart';

@freezed
class DynamicCard with _$DynamicCard {
  const factory DynamicCard(
      {String? color,
      String? shadowColor,
      String? surfaceTintColor,
      double? elevation,
      @Default(true) bool borderOnForeground,
      DynamicEdgeInsets? margin,
      Clip? clipBehavior,
      Map<String, dynamic>? child,
      @Default(true) bool semanticContainer,
      DynamicRoundedRectangleBorder? shape}) = _DynamicCard;

  factory DynamicCard.fromJson(Map<String, dynamic> json) =>
      _$DynamicCardFromJson(json);
}
