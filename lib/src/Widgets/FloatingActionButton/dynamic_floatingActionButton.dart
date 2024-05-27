import 'package:flutter_dynamic_ui/src/Utils/button_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_floatingActionButton.freezed.dart';
part 'dynamic_floatingActionButton.g.dart';

@freezed
class DynamicFloatingActionButton with _$DynamicFloatingActionButton {
  const factory DynamicFloatingActionButton({
    String? onPressed,
    DynamicTextStyle? textStyle,
    @Default(FloatingActionButtonType.small)
    FloatingActionButtonType buttonType,
    @Default(false) bool autofocus,
    Map<String, dynamic>? icon,
    String? backgroundColor,
    String? foregroundColor,
    String? focusColor,
    String? hoverColor,
    String? splashColor,
    DynamicTextStyle? extendedTextStyle,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? disabledElevation,
    double? highlightElevation,
    double? extendedIconLabelSpacing,
    bool? enableFeedback,
    String? tooltip,
    Object? heroTag,
    required Map<String, dynamic> child,
  }) = _DynamicFloatingActionButton;

  factory DynamicFloatingActionButton.fromJson(Map<String, dynamic> json) =>
      _$DynamicFloatingActionButtonFromJson(json);
}
