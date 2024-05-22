import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/ListView/dynamic_listView.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicListViewParser extends JsonToWidgetParser<DynamicListView> {
  const DynamicListViewParser({this.controller});

  final ScrollController? controller;

  @override
  String get type => WidgetType.listView.name;

  @override
  DynamicListView getModel(Map<String, dynamic> json) =>
      DynamicListView.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicListView model) {
    return ListView.separated(
      scrollDirection: model.scrollDirection,
      reverse: model.reverse,
      controller: controller,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap,
      padding: model.padding?.parse,
      addAutomaticKeepAlives: model.addAutomaticKeepAlives,
      addRepaintBoundaries: model.addRepaintBoundaries,
      addSemanticIndexes: model.addSemanticIndexes,
      cacheExtent: model.cacheExtent,
      dragStartBehavior: model.dragStartBehavior,
      keyboardDismissBehavior: model.keyboardDismissBehavior,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior,
      itemCount: model.children.length,
      itemBuilder: (context, index) =>
          JsonToWidget.fromJson(model.children[index], context),
      separatorBuilder: (context, _) =>
          JsonToWidget.fromJson(model.separator, context) ?? const SizedBox(),
    );
  }
}
