import 'package:flutter/cupertino.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Container/dynamic_container.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BoxContraints/dynamic_boxConstraints.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BoxDecoration/dynamic_boxDecoration.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicContainerParser extends JsonToWidgetParser<DynamicContainer> {
  const DynamicContainerParser();

  @override
  String get type => WidgetType.container.name;

  @override
  DynamicContainer getModel(Map<String, dynamic> json) =>
      DynamicContainer.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicContainer model) {
    return Container(
      alignment: model.alignment?.value,
      padding: model.padding?.parse,
      color: model.color.toColor(context),
      decoration: model.decoration?.parse(context),
      foregroundDecoration: model.foregroundDecoration?.parse(context),
      width: model.width,
      height: model.height,
      constraints: model.constraints?.parse,
      margin: model.margin?.parse,
      clipBehavior: model.clipBehavior,
      child: JsonToWidget.fromJson(model.child, context),
    );
  }
}
