import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/GridView/dynamic_gridView.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';

class DynamicGridViewParser extends JsonToWidgetParser<DynamicGridView> {
  const DynamicGridViewParser();

  @override
  String get type => WidgetType.gridView.name;

  @override
  DynamicGridView getModel(Map<String, dynamic> json) =>
      DynamicGridView.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicGridView model,
      [Map<String, dynamic>? functions]) {
    return GridView.builder(
      scrollDirection: model.scrollDirection,
      reverse: model.reverse,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap,
      padding: model.padding.parse,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: model.crossAxisCount ?? 0,
        mainAxisSpacing: model.mainAxisSpacing,
        crossAxisSpacing: model.crossAxisSpacing,
        childAspectRatio: model.childAspectRatio,
      ),
      addAutomaticKeepAlives: model.addAutomaticKeepAlives,
      addRepaintBoundaries: model.addRepaintBoundaries,
      addSemanticIndexes: model.addSemanticIndexes,
      cacheExtent: model.cacheExtent,
      itemBuilder: (context, index) =>
          JsonToWidget.fromJson(model.children[index], context, functions),
      itemCount: model.children.length,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior: model.dragStartBehavior,
      keyboardDismissBehavior: model.keyboardDismissBehavior,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior,
    );
  }
}
