import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_circleAvatar.freezed.dart';
part 'dynamic_circleAvatar.g.dart';

@freezed
class DynamicCircleAvatar with _$DynamicCircleAvatar {
  const factory DynamicCircleAvatar({
    Map<String, dynamic>? child,
    String? backgroundColor,
    String? backgroundImage,
    String? foregroundImage,
    Map<String, dynamic>? onBackgroundImageError,
    Map<String, dynamic>? onForegroundImageError,
    String? foregroundColor,
    double? radius,
    double? minRadius,
    double? maxRadius,
  }) = _DynamicCircleAvatar;

  factory DynamicCircleAvatar.fromJson(Map<String, dynamic> json) =>
      _$DynamicCircleAvatarFromJson(json);
}
