import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/json_to_widget.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_bottomNavigationBarItem.freezed.dart';
part 'dynamic_bottomNavigationBarItem.g.dart';

@freezed
class DynamicBottomNavigationBarItem with _$DynamicBottomNavigationBarItem {
  const factory DynamicBottomNavigationBarItem({
    required Map<String, dynamic> icon,
    required String label,
    Map<String, dynamic>? activeIcon,
    String? backgroundColor,
    String? tooltip,
  }) = _DynamicBottomNavigationBarItem;

  factory DynamicBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =>
      _$DynamicBottomNavigationBarItemFromJson(json);
}

extension DynamicBottomNavigationBarItemParser
    on DynamicBottomNavigationBarItem {
  BottomNavigationBarItem parse(BuildContext context) {
    return BottomNavigationBarItem(
      icon: JsonToWidget.fromJson(icon, context) ?? const SizedBox(),
      activeIcon: JsonToWidget.fromJson(activeIcon, context),
      label: label,
      backgroundColor: backgroundColor?.toColor(context),
      tooltip: tooltip,
    );
  }
}
