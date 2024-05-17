import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_scaffold_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_sizedbox_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_text_parser.dart';
import 'package:flutter_dynamic_ui/src/Registry/dynamic_widget_registry.dart';

class JsonToWidget {
  static final _parsers = <JsonToWidgetParser>[
    const DynamicScaffoldParser(),
    const DynamicSizedBoxParser(),
    const DynamicTextParser()
  ];

  static Future<void> initialize() async {
    DynamicWidgetRegistry.instance.registerAll(_parsers);
  }

  static Widget? fromJson(Map<String, dynamic>? json, BuildContext context) {
    try {
      if (json != null) {
        String widgetType = json['type'];
        JsonToWidgetParser? widgetParser =
            DynamicWidgetRegistry.instance.getParser(widgetType);
        if (widgetParser != null) {
          final model = widgetParser.getModel(json);
          return widgetParser.parse(context, model);
        } else {
          print('Widget $widgetType not supported');
        }
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}

extension JsonToWidgetExtension on Widget? {
  PreferredSizeWidget? get toPreferredSizeWidget {
    if (this != null) {
      return this as PreferredSizeWidget;
    }
    return null;
  }
}
