import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/TextField/dynamic_textField.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputDecoration/dynamic_inputDecoration.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputFormatter/dynamic_inputFormatter.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';

class DynamicTextFieldParser extends JsonToWidgetParser<DynamicTextField> {
  const DynamicTextFieldParser({
    this.controller,
    this.focusNode,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  DynamicTextField getModel(Map<String, dynamic> json) =>
      DynamicTextField.fromJson(json);

  @override
  String get type => WidgetType.textField.name;

  @override
  Widget parse(BuildContext context, DynamicTextField model) {
    controller?.text = model.initialValue;

    return TextField(
      controller: controller ?? TextEditingController(text: model.initialValue),
      focusNode: focusNode,
      keyboardType: model.keyboardType?.value,
      textInputAction: model.textInputAction,
      textCapitalization: model.textCapitalization,
      textAlign: model.textAlign,
      textAlignVertical: model.textAlignVertical?.value,
      textDirection: model.textDirection,
      readOnly: model.readOnly,
      showCursor: model.showCursor,
      autofocus: model.autofocus,
      obscuringCharacter: model.obscuringCharacter,
      maxLines: model.maxLines,
      minLines: model.minLines,
      maxLength: model.maxLength,
      obscureText: model.obscureText,
      enableSuggestions: model.enableSuggestions,
      enabled: model.enabled,
      expands: model.expands,
      cursorWidth: model.cursorWidth,
      cursorHeight: model.cursorHeight,
      cursorColor: model.cursorColor?.toColor(context),
      style: model.style?.parse(context),
      decoration: model.decoration?.parse(context),
      inputFormatters: model.inputFormatters
          .map((DynamicInputFormatter formatter) =>
              formatter.type.format(formatter.rule ?? ""))
          .toList(),
    );
  }
}
