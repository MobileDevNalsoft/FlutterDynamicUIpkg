import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_dynamic_ui/src/Utils/icon_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_icon.freezed.dart';
part 'dynamic_icon.g.dart';

@freezed
class DynamicIcon with _$DynamicIcon {
  const factory DynamicIcon({
    required String icon,
    required IconType iconType,
    double? size,
    String? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) = _DynamicIcon;

  factory DynamicIcon.fromJson(Map<String, dynamic> json) =>
      _$DynamicIconFromJson(json);
}
