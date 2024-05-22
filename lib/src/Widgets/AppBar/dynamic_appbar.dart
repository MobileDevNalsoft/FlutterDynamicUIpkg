import 'package:flutter_dynamic_ui/src/WidgetsProperties/ContinuousRectangleBorder/dynamic_continuousRectangleBorder.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_appbar.freezed.dart';
part 'dynamic_appbar.g.dart';

@freezed
class DynamicAppBar with _$DynamicAppBar {
  const factory DynamicAppBar(
          {Map<String, dynamic>? leading,
          Map<String, dynamic>? title,
          DynamicTextStyle? titleTextStyle,
          DynamicTextStyle? toolbarTextStyle,
          String? shadowColor,
          String? backgroundColor,
          String? foregroundColor,
          String? surfaceTintColor,
          @Default([]) List<Map<String, dynamic>> actions,
          Map<String, dynamic>? bottom,
          double? titleSpacing,
          @Default(1.0) double toolbarOpacity,
          @Default(1.0) double bottomOpacity,
          double? toolbarHeight,
          double? leadingWidth,
          @Default(true) bool primary,
          bool? centerTitle,
          double? elevation,
          double? scrolledUnderElevation,
          DynamicContinuousRectangleBorder? continuousRectangleBorder}) =
      _DynamicAppBar;

  factory DynamicAppBar.fromJson(Map<String, dynamic> json) =>
      _$DynamicAppBarFromJson(json);
}
