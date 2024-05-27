import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/SafeArea/dynamic_safeArea.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicSafeAreaParser extends JsonToWidgetParser<DynamicSafeArea> {
  const DynamicSafeAreaParser();

  @override
  DynamicSafeArea getModel(Map<String, dynamic> json) =>
      DynamicSafeArea.fromJson(json);

  @override
  String get type => WidgetType.safeArea.name;

  @override
  Widget parse(BuildContext context, DynamicSafeArea model,
      [Map<String, dynamic>? functions]) {
    return SafeArea(
      maintainBottomViewPadding: model.maintainBottomViewPadding,
      left: model.left,
      top: model.top,
      right: model.right,
      bottom: model.bottom,
      minimum: model.minimum.parse,
      child: JsonToWidget.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
