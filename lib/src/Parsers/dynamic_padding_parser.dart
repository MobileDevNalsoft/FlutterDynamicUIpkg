import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Enums/widget_type.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Padding/dynamic_padding.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicPaddingParser extends JsonToWidgetParser<DynamicPadding> {
  const DynamicPaddingParser();

  @override
  DynamicPadding getModel(Map<String, dynamic> json) =>
      DynamicPadding.fromJson(json);

  @override
  String get type => WidgetType.padding.name;

  @override
  Widget parse(BuildContext context, DynamicPadding model) {
    return Padding(
      padding: model.padding.parse,
      child: JsonToWidget.fromJson(model.child, context),
    );
  }
}
