import 'package:flutter_dynamic_ui/src/Widgets/Button/dynamic_buttonStyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_button.freezed.dart';
part 'dynamic_button.g.dart';

@freezed
class DynamicButton with _$DynamicButton {
  const factory DynamicButton(
      {@Default(false) bool key,
      String? onPressed,
      Map<String, dynamic>? child,
      DynamicButtonStyle? style}) = _DynamicButton;

  factory DynamicButton.fromJson(Map<String, dynamic> json) =>
      _$DynamicButtonFromJson(json);
}
