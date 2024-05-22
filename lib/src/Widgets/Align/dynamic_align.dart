import 'package:flutter_dynamic_ui/src/Utils/alignment_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_align.freezed.dart';
part 'dynamic_align.g.dart';

@freezed
class DynamicAlign with _$DynamicAlign {
  const factory DynamicAlign({
    @Default(DynamicAlignmentDirectional.center)
    DynamicAlignmentDirectional alignment,
    double? widthFactor,
    double? heightFactor,
    Map<String, dynamic>? child,
  }) = _DynamicAlign;

  factory DynamicAlign.fromJson(Map<String, dynamic> json) =>
      _$DynamicAlignFromJson(json);
}
