import 'package:flutter_dynamic_ui/src/Utils/alignment_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/ButtonStyle/dynamic_buttonStyle.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BoxContraints/dynamic_boxConstraints.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_iconButton.freezed.dart';
part 'dynamic_iconButton.g.dart';

@freezed
class DynamicIconButton with _$DynamicIconButton {
  const factory DynamicIconButton({
    double? iconSize,
    DynamicEdgeInsets? padding,
    DynamicAlignment? alignment,
    double? splashRadius,
    String? color,
    String? focusColor,
    String? hoverColor,
    String? highlightColor,
    String? splashColor,
    String? disabledColor,
    Map<String, dynamic>? onPressed,
    @Default(false) bool autofocus,
    String? tooltip,
    bool? enableFeedback,
    DynamicBoxConstraints? constraints,
    DynamicButtonStyle? style,
    bool? isSelected,
    Map<String, dynamic>? selectedIcon,
    Map<String, dynamic>? icon,
  }) = _DynamicIconButton;

  factory DynamicIconButton.fromJson(Map<String, dynamic> json) =>
      _$DynamicIconButtonFromJson(json);
}
