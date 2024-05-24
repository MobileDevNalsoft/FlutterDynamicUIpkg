import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Align/dynamic_align.dart';

class DynamicAlignParser extends JsonToWidgetParser<DynamicAlign> {
  const DynamicAlignParser();

  @override
  DynamicAlign getModel(Map<String, dynamic> json) =>
      DynamicAlign.fromJson(json);

  @override
  String get type => WidgetType.align.name;

  @override
  Widget parse(BuildContext context, DynamicAlign model,
      [Map<String, dynamic>? functions]) {
    return Align(
      alignment: model.alignment.value,
      heightFactor: model.heightFactor,
      widthFactor: model.widthFactor,
      child: JsonToWidget.fromJson(model.child, context, functions),
    );
  }
}
