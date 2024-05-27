import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_transform.freezed.dart';
part 'dynamic_transform.g.dart';

@freezed
class DynamicTransform with _$DynamicTransform {
  const factory DynamicTransform(
      {required Map<String, dynamic> child,
      List<double>? xy,
      double? radians,
      double? scale,
      required String transform}) = _DynamicTransform;

  factory DynamicTransform.fromJson(Map<String, dynamic> json) =>
      _$DynamicTransformFromJson(json);
}
