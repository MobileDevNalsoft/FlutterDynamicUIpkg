import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/BottomNavigationBarItem/dynamic_bottomNavigationBarItem.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_bottomNavigationBar.freezed.dart';
part 'dynamic_bottomNavigationBar.g.dart';

@freezed
class DynamicBottomNavigationBar with _$DynamicBottomNavigationBar {
  const factory DynamicBottomNavigationBar({
    required List<DynamicBottomNavigationBarItem> items,
    String? onTap,
    dynamic currentIndex,
    double? elevation,
    BottomNavigationBarType? bottomNavigationBarType,
    String? fixedColor,
    String? backgroundColor,
    @Default(24) double iconSize,
    String? selectedItemColor,
    String? unselectedItemColor,
    @Default(14.0) double selectedFontSize,
    @Default(12.0) double unselectedFontSize,
    DynamicTextStyle? selectedLabelStyle,
    DynamicTextStyle? unselectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    bool? enableFeedback,
    BottomNavigationBarLandscapeLayout? landscapeLayout,
  }) = _DynamicBottomNavigationBar;

  factory DynamicBottomNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$DynamicBottomNavigationBarFromJson(json);
}
