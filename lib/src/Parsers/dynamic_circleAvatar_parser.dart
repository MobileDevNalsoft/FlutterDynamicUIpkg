import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/CircleAvatar/dynamic_circleAvatar.dart';

class DynamicCircleAvatarParser
    extends JsonToWidgetParser<DynamicCircleAvatar> {
  const DynamicCircleAvatarParser();

  @override
  String get type => WidgetType.circleAvatar.name;

  @override
  DynamicCircleAvatar getModel(Map<String, dynamic> json) =>
      DynamicCircleAvatar.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicCircleAvatar model,
      [Map<String, dynamic>? functions]) {
    return CircleAvatar(
      backgroundColor: model.backgroundColor.toColor(context),
      backgroundImage: model.backgroundImage != null
          ? NetworkImage(model.backgroundImage!)
          : null,
      foregroundImage: model.foregroundImage != null
          ? NetworkImage(model.foregroundImage!)
          : null,
      foregroundColor: model.foregroundColor.toColor(context),
      radius: model.radius,
      minRadius: model.minRadius,
      maxRadius: model.maxRadius,
      child: JsonToWidget.fromJson(model.child, context, functions),
    );
  }
}
