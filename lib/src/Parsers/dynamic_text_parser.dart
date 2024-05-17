import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Enums/widget_type.dart';

class DynamicTextParser extends JsonToWidgetParser<DynamicText> {
  const DynamicTextParser();

  @override
  DynamicText getModel(Map<String, dynamic> json) => DynamicText.fromJson(json);

  @override
  String get type => WidgetType.text.name;

  @override
  Widget parse(BuildContext context, DynamicText model) {
    TextStyle textStyle = const TextStyle();

    if (model.textStyle.isNotEmpty) {
      textStyle = TextStyle(
        color: Color(int.parse(
                (model.textStyle['color'] ?? '#000000').substring(1, 7),
                radix: 16) +
            0xFF000000),
      );
    }

    return Text(
      model.text ?? '',
      key: model.key ? GlobalKey() : null,
      maxLines: model.maxLines,
      overflow: model.textOverflowType?.value,
      style: textStyle,
    );
  }
}
