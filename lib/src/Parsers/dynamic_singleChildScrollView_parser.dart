import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/SingleChildScrollView/dynamic_singleChildScrollView.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicSingleChildScrollViewParser
    extends JsonToWidgetParser<DynamicSingleChildScrollView> {
  const DynamicSingleChildScrollViewParser();

  @override
  DynamicSingleChildScrollView getModel(Map<String, dynamic> json) =>
      DynamicSingleChildScrollView.fromJson(json);

  @override
  String get type => WidgetType.singleChildScrollView.name;

  @override
  Widget parse(BuildContext context, DynamicSingleChildScrollView model) {
    return SingleChildScrollView(
      scrollDirection: model.scrollDirection,
      reverse: model.reverse,
      padding: model.padding?.parse,
      primary: model.primary,
      physics: model.physics?.parse,
      dragStartBehavior: model.dragStartBehavior,
      clipBehavior: model.clipBehavior,
      restorationId: model.restorationId,
      keyboardDismissBehavior: model.keyboardDismissBehavior,
      child: JsonToWidget.fromJson(model.child, context),
    );
  }
}
