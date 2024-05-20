import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_size.freezed.dart';
part 'dynamic_size.g.dart';

@freezed
class DynamicSize with _$DynamicSize {
  const factory DynamicSize({
    required double width,
    required double height,
  }) = _DynamicSize;

  factory DynamicSize.fromJson(Map<String, dynamic> json) =>
      _$DynamicSizeFromJson(json);
}

extension DynamicSizeParser on DynamicSize? {
  Size get parse {
    return Size(this?.width ?? 0, this?.height ?? 0);
  }
}
