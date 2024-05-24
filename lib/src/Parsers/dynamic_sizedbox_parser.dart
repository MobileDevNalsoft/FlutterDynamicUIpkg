import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/SizedBox/dynamic_sizedbox.dart';

class DynamicSizedBoxParser extends JsonToWidgetParser<DynamicSizedBox> {
  const DynamicSizedBoxParser();

  @override
  DynamicSizedBox getModel(Map<String, dynamic> json) =>
      DynamicSizedBox.fromJson(json);

  @override
  String get type => WidgetType.sizedBox.name;

  @override
  Widget parse(BuildContext context, DynamicSizedBox model,
      [Map<String, dynamic>? functions]) {
    return SizedBox(
      key: model.key ? GlobalKey() : null,
      width: model.width,
      height: model.height,
      child: JsonToWidget.fromJson(model.child, context, functions),
    );
  }
}
