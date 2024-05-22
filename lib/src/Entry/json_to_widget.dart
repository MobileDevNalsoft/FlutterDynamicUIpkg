import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_alertDialogParser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_appbar_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_center_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_column_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_container_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_iconButton_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_listTile_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_listView_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_padding_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_singleChildScrollView_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_textFormField_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_elevatedButton_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_icon_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_positioned_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_row_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_scaffold_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_sizedbox_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_stack_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_textButton_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_textField_parser.dart';
import 'package:flutter_dynamic_ui/src/Parsers/dynamic_text_parser.dart';
import 'package:flutter_dynamic_ui/src/Registry/dynamic_widget_registry.dart';

class JsonToWidget {
  static final _parsers = <JsonToWidgetParser>[
    const DynamicScaffoldParser(),
    const DynamicSizedBoxParser(),
    const DynamicTextParser(),
    const DynamicCenterParser(),
    const DynamicTextButtonParser(),
    const DynamicContainerParser(),
    const DynamicTextFieldParser(),
    const DynamicElevatedButtonParser(),
    const DynamicIconParser(),
    const DynamicRowParser(),
    const DynamicColumnParser(),
    const DynamicStackParser(),
    const DynamicPositionedParser(),
    const DynamicIconButtonParser(),
    const DynamicTextFormFieldParser(),
    const DynamicAppBarParser(),
    const DynamicPaddingParser(),
    const DynamicListTileParser(),
    const DynamicListViewParser(),
    const DynamicSingleChildScrollViewParser(),
    const DynamicAlertDialogParser()
  ];

  static Future<void> initialize() async {
    DynamicWidgetRegistry.instance.registerAll(_parsers);
  }

  static Widget? fromJson(Map<String, dynamic>? json, context,
      [Map<String, void Function()>? functions]) {
    try {
      if (json != null) {
        String widgetType = json['type'];
        JsonToWidgetParser? widgetParser =
            DynamicWidgetRegistry.instance.getParser(widgetType);
        if (widgetParser != null) {
          final model = widgetParser.getModel(json);
          return functions == null
              ? widgetParser.parse(context, model)
              : widgetParser.parseWithFunctions(context, model, functions);
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
