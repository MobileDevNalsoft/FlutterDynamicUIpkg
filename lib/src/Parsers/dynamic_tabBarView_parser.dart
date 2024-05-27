import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/TabBarView/dynamic_tabBarView.dart';

class DynamicTabBarViewParser extends JsonToWidgetParser<DynamicTabBarView> {
  const DynamicTabBarViewParser({this.controller});

  final TabController? controller;

  @override
  DynamicTabBarView getModel(Map<String, dynamic> json) =>
      DynamicTabBarView.fromJson(json);

  @override
  String get type => WidgetType.tabBarView.name;

  @override
  Widget parse(BuildContext context, DynamicTabBarView model,
      [Map<String, dynamic>? functions]) {
    return TabBarView(
      controller: controller,
      physics: model.physics?.parse,
      dragStartBehavior: model.dragStartBehavior,
      viewportFraction: model.viewportFraction,
      clipBehavior: model.clipBehavior,
      children: model.children
          .map((child) =>
              JsonToWidget.fromJson(child, context) ?? const SizedBox())
          .toList(),
    );
  }
}
