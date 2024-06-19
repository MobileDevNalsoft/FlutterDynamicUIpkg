import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/MaterialColor/dynamic_materialColor.dart';

import '../Utils/widgetType_utils.dart';
import '../Widgets/CheckBox/dynamic_checkBox.dart';

class DynamicCheckBoxParser extends JsonToWidgetParser<DynamicCheckBox> {
  const DynamicCheckBoxParser();

  @override
  DynamicCheckBox getModel(Map<String, dynamic> json) =>
      DynamicCheckBox.fromJson(json);

  @override
  String get type => WidgetType.checkBox.name;

  @override
  Widget parse(BuildContext context, DynamicCheckBox model,
      [Map<String, dynamic>? functions]) {
    return Checkbox(
        value: model.value,
        onChanged: (value) {
          if (functions != null) functions[model.onChanged](value);
        },
        activeColor: model.activeColor.toColor(context),
        fillColor: WidgetStateProperty.all(model.fillColor?.parse(context)),
        checkColor: model.checkColor.toColor(context),
        tristate: model.tristate,
        focusColor: model.focusColor.toColor(context),
        hoverColor: model.hoverColor.toColor(context),
        overlayColor:
            WidgetStateProperty.all(model.overlayColor?.parse(context)),
        splashRadius: model.splashRadius,
        autofocus: model.autofocus,
        isError: model.isError);
  }
}
