import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Enums/widget_type.dart';
import 'package:flutter_dynamic_ui/src/Widgets/SizedBox/dynamic_sizedbox.dart';

class DynamicSizedBoxParser extends JsonToWidgetParser<DynamicSizedBox> {
  const DynamicSizedBoxParser();

  @override
  DynamicSizedBox getModel(Map<String, dynamic> json) =>
      DynamicSizedBox.fromJson(json);

  @override
  String get type => WidgetType.sizedBox.name;

  @override
  Widget parse(BuildContext context, DynamicSizedBox model) {
    return SizedBox(
      key: model.key ? GlobalKey() : null,
      child: JsonToWidget.fromJson(model.child, context),
      width: model.width,
      height: model.height,
    );
  }
}
