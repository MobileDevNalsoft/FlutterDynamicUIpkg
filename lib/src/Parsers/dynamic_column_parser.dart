import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Column/dynamic_column.dart';

class DynamicColumnParser extends JsonToWidgetParser<DynamicColumn> {
  const DynamicColumnParser();

  @override
  DynamicColumn getModel(Map<String, dynamic> json) =>
      DynamicColumn.fromJson(json);

  @override
  String get type => WidgetType.column.name;

  @override
  Widget parse(BuildContext context, DynamicColumn model) {
    return Column(
      mainAxisAlignment: model.mainAxisAlignment,
      crossAxisAlignment: model.crossAxisAlignment,
      mainAxisSize: model.mainAxisSize,
      textDirection: model.textDirection,
      verticalDirection: model.verticalDirection,
      children: model.children
          .map(
            (value) =>
                JsonToWidget.fromJson(value, context) ?? const SizedBox(),
          )
          .toList(),
    );
  }
}
