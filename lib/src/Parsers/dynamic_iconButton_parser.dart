import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/ButtonStyle/dynamic_buttonStyle.dart';
import 'package:flutter_dynamic_ui/src/Widgets/IconButton/dynamic_iconButton.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BoxContraints/dynamic_boxConstraints.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicIconButtonParser extends JsonToWidgetParser<DynamicIconButton> {
  const DynamicIconButtonParser();

  @override
  String get type => WidgetType.iconButton.name;

  @override
  DynamicIconButton getModel(Map<String, dynamic> json) =>
      DynamicIconButton.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicIconButton model,
      [Map<String, dynamic>? functions]) {
    return IconButton(
      iconSize: model.iconSize,
      padding: model.padding.parse,
      alignment: model.alignment?.value,
      splashRadius: model.splashRadius,
      color: model.color.toColor(context),
      focusColor: model.focusColor.toColor(context),
      hoverColor: model.hoverColor.toColor(context),
      highlightColor: model.highlightColor.toColor(context),
      splashColor: model.splashColor.toColor(context),
      disabledColor: model.disabledColor.toColor(context),
      onPressed: () {
        if (functions != null) functions[model.onPressed]();
      },
      autofocus: model.autofocus,
      tooltip: model.tooltip,
      enableFeedback: model.enableFeedback,
      constraints: model.constraints?.parse,
      style: model.style?.parseIcon(context),
      isSelected: model.isSelected,
      selectedIcon: JsonToWidget.fromJson(model.selectedIcon, context),
      icon: JsonToWidget.fromJson(model.icon, context) ?? const SizedBox(),
    );
  }
}
