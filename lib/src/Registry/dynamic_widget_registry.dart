import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';

class DynamicWidgetRegistry {
  DynamicWidgetRegistry._internal();

  static final DynamicWidgetRegistry _singleton =
      DynamicWidgetRegistry._internal();

  factory DynamicWidgetRegistry() => _singleton;

  static DynamicWidgetRegistry get instance => _singleton;

  static final _dynamicParsers = <String, JsonToWidgetParser>{};

  bool register(JsonToWidgetParser parser) {
    final String type = parser.type;

    if (_dynamicParsers.containsKey(type)) {
      print('Widget $type is already registered');
      return false;
    } else {
      _dynamicParsers[type] = parser;
      return true;
    }
  }

  Future<dynamic> registerAll(List<JsonToWidgetParser> parsers) {
    return Future.forEach(
        parsers, (JsonToWidgetParser parser) => register(parser));
  }

  JsonToWidgetParser<dynamic>? getParser(String type) {
    return _dynamicParsers[type];
  }
}
