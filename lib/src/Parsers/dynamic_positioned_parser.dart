import 'package:flutter/cupertino.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Positioned/dynamic_positioned.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/Rect/dynamic_rect.dart';

class DynamicPositionedParser extends JsonToWidgetParser<DynamicPositioned> {
  const DynamicPositionedParser();

  @override
  DynamicPositioned getModel(Map<String, dynamic> json) =>
      DynamicPositioned.fromJson(json);

  @override
  String get type => WidgetType.positioned.name;

  @override
  Widget parse(BuildContext context, DynamicPositioned model) {
    switch (model.positionedType) {
      case DynamicPositionedType.directional:
        return Positioned.directional(
            textDirection: model.textDirection,
            top: model.top,
            bottom: model.bottom,
            height: model.height,
            width: model.width,
            start: model.start,
            end: model.end,
            child: JsonToWidget.fromJson(model.child, context) ??
                const SizedBox());
      case DynamicPositionedType.fill:
        return Positioned.fill(
            left: model.left,
            top: model.top,
            right: model.right,
            bottom: model.bottom,
            child: JsonToWidget.fromJson(model.child, context) ??
                const SizedBox());
      case DynamicPositionedType.fromRect:
        return Positioned.fromRect(
            rect: model.rect?.parse ?? Rect.zero,
            child: JsonToWidget.fromJson(model.child, context) ??
                const SizedBox());
      default:
        return Positioned(
            left: model.left,
            top: model.top,
            right: model.right,
            bottom: model.bottom,
            height: model.height,
            width: model.width,
            child: JsonToWidget.fromJson(model.child, context) ??
                const SizedBox());
    }
  }
}
