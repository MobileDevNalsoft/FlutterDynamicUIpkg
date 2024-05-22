import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/ListTile/dynamic_listTile.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicListTileParser extends JsonToWidgetParser<DynamicListTile> {
  const DynamicListTileParser();

  @override
  String get type => WidgetType.listTile.name;

  @override
  DynamicListTile getModel(Map<String, dynamic> json) =>
      DynamicListTile.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicListTile model) {
    return ListTile(
      onTap: () {},
      onLongPress: () {},
      leading: JsonToWidget.fromJson(model.leading, context),
      title: JsonToWidget.fromJson(model.title, context),
      subtitle: JsonToWidget.fromJson(model.subtitle, context),
      trailing: JsonToWidget.fromJson(model.trailing, context),
      isThreeLine: model.isThreeLine,
      dense: model.dense,
      style: model.style,
      selectedColor: model.selectedColor?.toColor(context),
      iconColor: model.iconColor?.toColor(context),
      textColor: model.textColor?.toColor(context),
      contentPadding: model.contentPadding?.parse,
      enabled: model.enabled,
      selected: model.selected,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      autofocus: model.autofocus,
      tileColor: model.tileColor?.toColor(context),
      selectedTileColor: model.selectedTileColor?.toColor(context),
      enableFeedback: model.enableFeedback,
      horizontalTitleGap: model.horizontalTitleGap,
      minVerticalPadding: model.minVerticalPadding,
      minLeadingWidth: model.minLeadingWidth,
    );
  }
}
