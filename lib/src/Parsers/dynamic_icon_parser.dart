import 'package:flutter/cupertino.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Enums/widget_type.dart';
import 'package:flutter_dynamic_ui/src/Logger/logger.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/icon_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Icon/dynamic_icon.dart';

class DynamicIconParser extends JsonToWidgetParser<DynamicIcon> {
  const DynamicIconParser();
  @override
  String get type => WidgetType.icon.name;

  @override
  DynamicIcon getModel(Map<String, dynamic> json) => DynamicIcon.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicIcon model) {
    IconData? iconData;
    switch (model.iconType) {
      case IconType.material:
        iconData = materialIconMap[model.icon];
        break;
      case IconType.cupertino:
        iconData = cupertinoIconsMap[model.icon];
        break;
    }

    if (iconData != null) {
      return Icon(
        iconData,
        size: model.size,
        color: model.color.toColor(context),
        semanticLabel: model.semanticLabel,
        textDirection: model.textDirection,
      );
    } else {
      Log.e("The Icon ${model.icon} does not exist.");
      return const SizedBox();
    }
  }
}
