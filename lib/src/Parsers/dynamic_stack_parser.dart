import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Stack/dynamic_stack.dart';

class DynamicStackParser extends JsonToWidgetParser<DynamicStack> {
  const DynamicStackParser();

  @override
  DynamicStack getModel(Map<String, dynamic> json) =>
      DynamicStack.fromJson(json);

  @override
  String get type => WidgetType.stack.name;

  @override
  Widget parse(BuildContext context, DynamicStack model,
      [Map<String, dynamic>? functions]) {
    return Stack(
      alignment: model.alignment.value,
      clipBehavior: model.clipBehavior,
      fit: model.fit,
      textDirection: model.textDirection,
      children: model.children
          .map((value) =>
              JsonToWidget.fromJson(value, context, functions) ??
              const SizedBox())
          .toList(),
    );
  }
}
