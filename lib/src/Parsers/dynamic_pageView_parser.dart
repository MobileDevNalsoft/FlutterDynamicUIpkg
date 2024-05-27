import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/PageView/dynamic_pageView.dart';

class DynamicPageViewParser extends JsonToWidgetParser<DynamicPageView> {
  const DynamicPageViewParser();

  @override
  DynamicPageView getModel(Map<String, dynamic> json) =>
      DynamicPageView.fromJson(json);

  @override
  String get type => WidgetType.pageView.name;

  @override
  Widget parse(BuildContext context, DynamicPageView model,
      [Map<String, dynamic>? functions]) {
    return PageView.builder(
        scrollDirection: model.scrollDirection,
        reverse: model.reverse,
        controller: model.controller,
        physics: model.physics?.parse,
        pageSnapping: model.pageSnapping,
        onPageChanged: (int index) {
          functions![model.onPageChanged]!(index);
        },
        itemBuilder: (context, index) {
          return JsonToWidget.fromJson(model.children[index], context) ??
              const SizedBox();
        },
        itemCount: model.children.length,
        dragStartBehavior: model.dragStartBehavior,
        allowImplicitScrolling: model.allowImplicitScrolling,
        restorationId: model.restorationId,
        clipBehavior: model.clipBehavior,
        padEnds: true,
        findChildIndexCallback: (key) {
          functions![model.findChildIndexCallback]!(key);
        });
  }
}
