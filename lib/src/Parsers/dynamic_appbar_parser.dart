import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/AppBar/dynamic_appbar.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/ContinuousRectangleBorder/dynamic_continuousRectangleBorder.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';

class DynamicAppBarParser extends JsonToWidgetParser<DynamicAppBar> {
  const DynamicAppBarParser();

  @override
  String get type => WidgetType.appBar.name;

  @override
  DynamicAppBar getModel(Map<String, dynamic> json) =>
      DynamicAppBar.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicAppBar model,
      [Map<String, dynamic>? functions]) {
    return AppBar(
        leading: JsonToWidget.fromJson(model.leading, context, functions),
        title: JsonToWidget.fromJson(model.title, context, functions),
        titleTextStyle: model.titleTextStyle?.parse(context),
        toolbarTextStyle: model.toolbarTextStyle?.parse(context),
        shadowColor: model.shadowColor?.toColor(context),
        backgroundColor: model.backgroundColor?.toColor(context),
        foregroundColor: model.foregroundColor?.toColor(context),
        surfaceTintColor: model.surfaceTintColor?.toColor(context),
        actions: model.actions
            .map((action) =>
                JsonToWidget.fromJson(action, context, functions) ??
                const SizedBox())
            .toList(),
        bottom: JsonToWidget.fromJson(model.bottom, context, functions)
            .toPreferredSizeWidget,
        titleSpacing: model.titleSpacing,
        toolbarOpacity: model.toolbarOpacity,
        bottomOpacity: model.bottomOpacity,
        toolbarHeight: model.toolbarHeight,
        leadingWidth: model.leadingWidth,
        primary: model.primary,
        centerTitle: model.centerTitle,
        elevation: model.elevation,
        scrolledUnderElevation: model.scrolledUnderElevation,
        shape: model.continuousRectangleBorder?.parse(context));
  }
}
