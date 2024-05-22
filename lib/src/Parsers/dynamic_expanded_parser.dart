import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Expanded/dynamic_expanded.dart';

class DynamicExpandedParser extends JsonToWidgetParser<DynamicExpanded> {
  const DynamicExpandedParser();

  @override
  String get type => WidgetType.expanded.name;

  @override
  DynamicExpanded getModel(Map<String, dynamic> json) =>
      DynamicExpanded.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicExpanded model) {
    return Expanded(
      flex: model.flex,
      child: JsonToWidget.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
