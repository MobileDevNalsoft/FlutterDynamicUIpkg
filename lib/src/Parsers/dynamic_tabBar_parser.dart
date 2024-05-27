import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/TabBar/dynamic_tabBar.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';

class DynamicTabBarParser extends JsonToWidgetParser<DynamicTabBar> {
  const DynamicTabBarParser({this.controller});

  final TabController? controller;

  @override
  DynamicTabBar getModel(Map<String, dynamic> json) =>
      DynamicTabBar.fromJson(json);

  @override
  String get type => WidgetType.tabBar.name;

  @override
  Widget parse(BuildContext context, DynamicTabBar model,
      [Map<String, dynamic>? functions]) {
    return TabBar(
      controller: controller,
      tabs: model.tabs
          .map((tab) => JsonToWidget.fromJson(tab, context) ?? const SizedBox())
          .toList(),
      isScrollable: model.isScrollable,
      padding: model.padding?.parse,
      indicatorColor: model.indicatorColor?.toColor(context),
      automaticIndicatorColorAdjustment:
          model.automaticIndicatorColorAdjustment,
      indicatorWeight: model.indicatorWeight,
      indicatorPadding: model.indicatorPadding.parse,
      indicatorSize: model.indicatorSize,
      labelColor: model.labelColor.toColor(context),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding.parse,
      unselectedLabelColor: model.unselectedLabelColor.toColor(context),
      unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
      dragStartBehavior: model.dragStartBehavior,
      enableFeedback: model.enableFeedback,
      onTap: (_) {},
      physics: model.physics?.parse,
      tabAlignment: model.tabAlignment,
    );
  }
}
