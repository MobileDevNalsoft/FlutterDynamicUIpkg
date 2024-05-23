import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Row/dynamic_row.dart';

class DynamicRowParser extends JsonToWidgetParser<DynamicRow> {
  const DynamicRowParser();

  @override
  DynamicRow getModel(Map<String, dynamic> json) => DynamicRow.fromJson(json);

  @override
  String get type => WidgetType.row.name;

  @override
  Widget parse(BuildContext context, DynamicRow model) {
    return Row(
      mainAxisAlignment: model.mainAxisAlignment,
      crossAxisAlignment: model.crossAxisAlignment,
      mainAxisSize: model.mainAxisSize,
      textDirection: model.textDirection,
      verticalDirection: model.verticalDirection,
      children: model.children
          .map((value) =>
              JsonToWidget.fromJson(value, context) ?? const SizedBox())
          .toList(),
    );
  }

  @override
  Widget parseWithFunctions(BuildContext context, DynamicRow model,
      Map<String, void Function()> functions) {
    return Row(
      mainAxisAlignment: model.mainAxisAlignment,
      crossAxisAlignment: model.crossAxisAlignment,
      mainAxisSize: model.mainAxisSize,
      textDirection: model.textDirection,
      verticalDirection: model.verticalDirection,
      children: model.children
          .map((value) =>
              JsonToWidget.fromJson(value, context, functions) ??
              const SizedBox())
          .toList(),
    );
  }
}
