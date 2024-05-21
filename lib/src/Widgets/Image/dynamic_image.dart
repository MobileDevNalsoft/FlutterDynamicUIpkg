import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/alignment_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_image.freezed.dart';
part 'dynamic_image.g.dart';

enum DynamicImageType { file, network, asset }

@freezed
class DynamicImage with _$DynamicImage {
  const factory DynamicImage({
    required String src,
    @Default(DynamicAlignment.center) DynamicAlignment alignment,
    @Default(DynamicImageType.network) DynamicImageType imageType,
    String? color,
    double? width,
    double? height,
    BoxFit? fit,
  }) = _DynamicImage;

  factory DynamicImage.fromJson(Map<String, dynamic> json) =>
      _$DynamicImageFromJson(json);
}
