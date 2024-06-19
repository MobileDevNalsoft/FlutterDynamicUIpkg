import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/gap/dynamic_gap.dart';
import 'package:gap/gap.dart';

class DynamicGapParser extends JsonToWidgetParser<DynamicGap> {
  const DynamicGapParser();

  @override
  DynamicGap getModel(Map<String, dynamic> json) => DynamicGap.fromJson(json);

  @override
  String get type => WidgetType.gap.name;

  @override
  Widget parse(BuildContext context, DynamicGap model,
      [Map<String, dynamic>? functions]) {
    return model.max ? MaxGap(model.value) : Gap(model.value);
  }
}
