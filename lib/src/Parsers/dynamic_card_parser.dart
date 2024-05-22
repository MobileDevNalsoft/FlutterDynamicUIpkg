import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Card/dynamic_card.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/RoundedRectangleBorder/dynamic_rounded_rectangle_border.dart';

class DynamicCardParser extends JsonToWidgetParser<DynamicCard> {
  const DynamicCardParser();

  @override
  String get type => WidgetType.card.name;

  @override
  DynamicCard getModel(Map<String, dynamic> json) => DynamicCard.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicCard model) {
    return Card(
      color: model.color?.toColor(context),
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      elevation: model.elevation,
      borderOnForeground: model.borderOnForeground,
      clipBehavior: model.clipBehavior,
      semanticContainer: model.semanticContainer,
      margin: model.margin?.parse,
      shape: model.shape.parse(context),
      child: JsonToWidget.fromJson(model.child, context),
    );
  }
}
