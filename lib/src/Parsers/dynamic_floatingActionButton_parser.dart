import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/button_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/FloatingActionButton/dynamic_floatingActionButton.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';

class DynamicFloatingActionButtonParser
    extends JsonToWidgetParser<DynamicFloatingActionButton> {
  const DynamicFloatingActionButtonParser();

  @override
  String get type => WidgetType.floatingActionButton.name;

  @override
  DynamicFloatingActionButton getModel(Map<String, dynamic> json) =>
      DynamicFloatingActionButton.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicFloatingActionButton model,
      [Map<String, dynamic>? functions]) {
    switch (model.buttonType) {
      case FloatingActionButtonType.extended:
        return FloatingActionButton.extended(
          onPressed: () {
            if (functions != null) functions[model.onPressed]();
          },
          icon: JsonToWidget.fromJson(model.icon, context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          extendedTextStyle: model.extendedTextStyle?.parse(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          extendedIconLabelSpacing: model.extendedIconLabelSpacing,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          label:
              JsonToWidget.fromJson(model.child, context) ?? const SizedBox(),
        );

      case FloatingActionButtonType.large:
        return FloatingActionButton.large(
          onPressed: () {
            if (functions != null) functions[model.onPressed]();
          },
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: JsonToWidget.fromJson(model.child, context),
        );

      case FloatingActionButtonType.medium:
        return FloatingActionButton(
          onPressed: () {
            if (functions != null) functions[model.onPressed]();
          },
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: JsonToWidget.fromJson(model.child, context),
        );

      case FloatingActionButtonType.small:
        return FloatingActionButton.small(
          onPressed: () {
            if (functions != null) functions[model.onPressed]();
          },
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: JsonToWidget.fromJson(model.child, context),
        );
    }
  }
}
