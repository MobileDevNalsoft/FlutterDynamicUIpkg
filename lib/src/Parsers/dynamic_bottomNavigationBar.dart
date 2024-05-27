import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/BottomNavigationBar/dynamic_bottomNavigationBar.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BottomNavigationBarItem/dynamic_bottomNavigationBarItem.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';

class DynamicBottomNavigationBarParser
    extends JsonToWidgetParser<DynamicBottomNavigationBar> {
  const DynamicBottomNavigationBarParser();

  @override
  String get type => WidgetType.bottomNavigationBar.name;

  @override
  DynamicBottomNavigationBar getModel(Map<String, dynamic> json) =>
      DynamicBottomNavigationBar.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicBottomNavigationBar model,
      [Map<String, dynamic>? functions]) {
    return BottomNavigationBar(
        items: model.items.map((item) => item.parse(context)).toList(),
        onTap: (index) {
          if (functions != null) functions[model.onTap]();
        },
        currentIndex: model.currentIndex,
        elevation: model.elevation,
        type: model.bottomNavigationBarType,
        fixedColor: model.fixedColor?.toColor(context),
        backgroundColor: model.backgroundColor?.toColor(context),
        iconSize: model.iconSize,
        selectedItemColor: model.selectedItemColor?.toColor(context),
        unselectedItemColor: model.unselectedItemColor?.toColor(context),
        selectedFontSize: model.selectedFontSize,
        unselectedFontSize: model.unselectedFontSize,
        selectedLabelStyle: model.selectedLabelStyle?.parse(context),
        unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
        showSelectedLabels: model.showSelectedLabels,
        showUnselectedLabels: model.showUnselectedLabels,
        enableFeedback: model.enableFeedback,
        landscapeLayout: model.landscapeLayout);
  }
}
