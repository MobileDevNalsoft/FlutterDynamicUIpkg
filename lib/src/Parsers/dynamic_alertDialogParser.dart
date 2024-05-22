import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/AlertDialog/dynamic_alertDialog.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';

class DynamicAlertDialogParser extends JsonToWidgetParser<DynamicAlertDialog> {
  const DynamicAlertDialogParser();

  @override
  String get type => WidgetType.alertDialog.name;

  @override
  DynamicAlertDialog getModel(Map<String, dynamic> json) =>
      DynamicAlertDialog.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicAlertDialog model) {
    return AlertDialog(
      icon: JsonToWidget.fromJson(model.icon, context),
      iconPadding: model.iconPadding?.parse,
      iconColor: model.iconColor?.toColor(context),
      title: JsonToWidget.fromJson(model.title, context),
      titlePadding: model.titlePadding?.parse,
      titleTextStyle: model.titleTextStyle?.parse(context),
      content: JsonToWidget.fromJson(model.content, context),
      contentPadding: model.contentPadding.parse,
      contentTextStyle: model.contentTextStyle?.parse(context),
      actions: model.actions
          ?.map((action) =>
              JsonToWidget.fromJson(action, context) ?? const SizedBox())
          .toList(),
      actionsPadding: model.actionsPadding.parse,
      actionsAlignment: model.actionsAlignment,
      actionsOverflowAlignment: model.actionsOverflowAlignment,
      actionsOverflowDirection: model.actionsOverflowDirection,
      actionsOverflowButtonSpacing: model.actionsOverflowButtonSpacing,
      buttonPadding: model.buttonPadding.parse,
      backgroundColor: model.backgroundColor.toColor(context),
      elevation: model.elevation,
      semanticLabel: model.semanticLabel,
      insetPadding: model.insetPadding.parse,
      clipBehavior: model.clipBehavior,
      scrollable: model.scrollable,
    );
  }

  @override
  Widget parseWithFunctions(BuildContext context, DynamicAlertDialog model,
      Map<String, void Function()> functions) {
    return const Placeholder();
  }
}
