import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Transform/dynamic_transform.dart';

class DynamicTransfromParser extends JsonToWidgetParser<DynamicTransform> {
  const DynamicTransfromParser();

  @override
  DynamicTransform getModel(Map<String, dynamic> json) =>
      DynamicTransform.fromJson(json);

  @override
  String get type => WidgetType.transform.name;

  @override
  Widget parse(BuildContext context, DynamicTransform model,
      [Map<String, dynamic>? functions]) {
    switch (model.transform) {
      case "translate":
        return Transform.translate(
            offset: Offset(model.xy?[0] ?? 0, model.xy?[1] ?? 0),
            child: JsonToWidget.fromJson(model.child, context));
      case "rotate":
        return Transform.rotate(
            angle: model.radians ?? 0,
            child: JsonToWidget.fromJson(model.child, context));
      case "scale":
        return Transform.scale(
            scale: model.scale,
            child: JsonToWidget.fromJson(model.child, context));
      default:
        return JsonToWidget.fromJson(model.child, context)!;
    }
  }
}
