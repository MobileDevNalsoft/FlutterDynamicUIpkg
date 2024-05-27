import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_safeArea.freezed.dart';
part 'dynamic_safeArea.g.dart';

@freezed
class DynamicSafeArea with _$DynamicSafeArea {
  const factory DynamicSafeArea({
    Map<String, dynamic>? child,
    @Default(true) bool left,
    @Default(true) bool top,
    @Default(true) bool right,
    @Default(true) bool bottom,
    @Default(DynamicEdgeInsets()) DynamicEdgeInsets minimum,
    @Default(false) bool maintainBottomViewPadding,
  }) = _DynamicSafeArea;

  factory DynamicSafeArea.fromJson(Map<String, dynamic> json) =>
      _$DynamicSafeAreaFromJson(json);
}
