import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Scaffold/dynamic_scaffold.dart';

class DynamicScaffoldParser extends JsonToWidgetParser<DynamicScaffold> {
  const DynamicScaffoldParser();

  @override
  DynamicScaffold getModel(Map<String, dynamic> json) =>
      DynamicScaffold.fromJson(json);

  @override
  String get type => WidgetType.scaffold.name;

  @override
  Widget parse(BuildContext context, DynamicScaffold model,
      [Map<String, void Function()?>? functions]) {
    return Scaffold(
        key: model.key ? GlobalKey() : null,
        appBar:
            JsonToWidget.fromJson(model.appBar, context).toPreferredSizeWidget,
        backgroundColor: model.backgroundColor.toColor(context),
        body: JsonToWidget.fromJson(model.body, context),
        floatingActionButton:
            JsonToWidget.fromJson(model.floatingActionButton, context),
        floatingActionButtonLocation:
            model.floatingActionButtonLocation?.value);
  }
}
