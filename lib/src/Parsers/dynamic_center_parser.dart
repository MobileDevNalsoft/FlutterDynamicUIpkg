import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Center/dynamic_center.dart';

class DynamicCenterParser extends JsonToWidgetParser<DynamicCenter> {
  const DynamicCenterParser();

  @override
  DynamicCenter getModel(Map<String, dynamic> json) =>
      DynamicCenter.fromJson(json);

  @override
  String get type => WidgetType.center.name;

  @override
  Widget parse(BuildContext context, DynamicCenter model,
      [Map<String, dynamic>? functions]) {
    return Center(
      widthFactor: model.widthFactor,
      heightFactor: model.heightFactor,
      child: JsonToWidget.fromJson(model.child, context, functions),
    );
  }

  @override
  Widget parseWithFunctions(BuildContext context, DynamicCenter model,
      Map<String, dynamic> functions) {
    return Center(
      widthFactor: model.widthFactor,
      heightFactor: model.heightFactor,
      child: JsonToWidget.fromJson(model.child, context, functions),
    );
  }
}
