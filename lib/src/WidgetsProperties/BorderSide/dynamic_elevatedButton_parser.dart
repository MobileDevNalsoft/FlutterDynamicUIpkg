import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Enums/widget_type.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Button/dynamic_button.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/ButtonStyle/dynamic_buttonStyle.dart';

class DynamicElevatedButtonParser extends JsonToWidgetParser<DynamicButton> {
  const DynamicElevatedButtonParser();

  @override
  String get type => WidgetType.elevatedButton.name;

  @override
  DynamicButton getModel(Map<String, dynamic> json) =>
      DynamicButton.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicButton model) {
    return ElevatedButton(
      onPressed: () {},
      style: model.style?.parseElevated(context),
      child: JsonToWidget.fromJson(model.child, context),
    );
  }
}
