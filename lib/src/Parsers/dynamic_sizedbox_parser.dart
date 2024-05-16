import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Enums/widget_type.dart';
import 'package:flutter_dynamic_ui/src/Models/sized_box_parser.dart';

class DynamicSizedBoxParser extends JsonToWidgetParser<SizedBoxParser> {
  const DynamicSizedBoxParser();

  @override
  SizedBoxParser getModel(Map<String, dynamic> json) =>
      SizedBoxParser.fromJson(json);

  @override
  String get type => WidgetType.sizedBox.name;

  @override
  Widget parse(BuildContext context, SizedBoxParser model) {
    return SizedBox(
      key: model.key ? GlobalKey() : null,
    );
  }
}
