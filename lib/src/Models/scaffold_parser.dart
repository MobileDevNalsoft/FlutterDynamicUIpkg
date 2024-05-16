import 'package:flutter_dynamic_ui/src/Utils/button_utils.dart';

class ScaffoldParser {
  bool key = false;
  Map<String, dynamic>? appBar;
  String? backgroundColor;
  Map<String, dynamic>? body;
  Map<String, dynamic>? floatingActionButton;
  DynamicFloatingActionButtonLocation? floatingActionButtonLocation;

  ScaffoldParser.fromJson(Map<String, dynamic> json) {
    key = bool.parse(json['key'] ?? 'false');
    appBar = json['appBar'];
    backgroundColor = json['backgroundColor'];
    body = json['body'];
    floatingActionButton = json['floatingActionButton'];
    _$DynamicFloatingActionButtonLocationEnumMap.removeWhere(
        (key, value) => value != json['floatingActionButtonLocation']);
    floatingActionButtonLocation =
        _$DynamicFloatingActionButtonLocationEnumMap.isNotEmpty
            ? _$DynamicFloatingActionButtonLocationEnumMap.keys.first
            : DynamicFloatingActionButtonLocation.endFloat;
  }
}

Map<DynamicFloatingActionButtonLocation, String>
    _$DynamicFloatingActionButtonLocationEnumMap = {
  DynamicFloatingActionButtonLocation.startTop: 'startTop',
  DynamicFloatingActionButtonLocation.miniStartTop: 'miniStartTop',
  DynamicFloatingActionButtonLocation.centerTop: 'centerTop',
  DynamicFloatingActionButtonLocation.miniCenterTop: 'miniCenterTop',
  DynamicFloatingActionButtonLocation.endTop: 'endTop',
  DynamicFloatingActionButtonLocation.miniEndTop: 'miniEndTop',
  DynamicFloatingActionButtonLocation.startFloat: 'startFloat',
  DynamicFloatingActionButtonLocation.miniStartFloat: 'miniStartFloat',
  DynamicFloatingActionButtonLocation.centerFloat: 'centerFloat',
  DynamicFloatingActionButtonLocation.miniCenterFloat: 'miniCenterFloat',
  DynamicFloatingActionButtonLocation.endFloat: 'endFloat',
  DynamicFloatingActionButtonLocation.miniEndFloat: 'miniEndFloat',
  DynamicFloatingActionButtonLocation.startDocked: 'startDocked',
  DynamicFloatingActionButtonLocation.miniStartDocked: 'miniStartDocked',
  DynamicFloatingActionButtonLocation.centerDocked: 'centerDocked',
  DynamicFloatingActionButtonLocation.miniCenterDocked: 'miniCenterDocked',
  DynamicFloatingActionButtonLocation.endDocked: 'endDocked',
  DynamicFloatingActionButtonLocation.miniEndDocked: 'miniEndDocked',
};
