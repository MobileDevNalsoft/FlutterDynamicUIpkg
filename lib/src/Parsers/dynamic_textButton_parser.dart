import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Button/dynamic_button.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/ButtonStyle/dynamic_buttonStyle.dart';

class DynamicTextButtonParser extends JsonToWidgetParser<DynamicButton> {
  const DynamicTextButtonParser();

  @override
  DynamicButton getModel(Map<String, dynamic> json) =>
      DynamicButton.fromJson(json);

  @override
  String get type => WidgetType.textButton.name;

  @override
  Widget parse(BuildContext context, DynamicButton model,
      [Map<String, dynamic>? functions]) {
    return TextButton(
        key: model.key ? GlobalKey() : null,
        onPressed: () {
          if (functions != null) functions[model.onPressed]();
        },
        style: model.style?.parseText(context),
        child: JsonToWidget.fromJson(model.child, context) ??
            const Text('No Text Passed'));
  }
}
