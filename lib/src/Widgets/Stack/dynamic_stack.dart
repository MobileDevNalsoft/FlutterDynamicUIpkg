import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Utils/alignment_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dynamic_stack.freezed.dart';
part 'dynamic_stack.g.dart';

@freezed
class DynamicStack with _$DynamicStack {
  const factory DynamicStack({
    @Default(DynamicAlignmentDirectional.topStart)
    DynamicAlignmentDirectional alignment,
    @Default(Clip.hardEdge) Clip clipBehavior,
    @Default(StackFit.loose) StackFit fit,
    TextDirection? textDirection,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _DynamicStack;

  factory DynamicStack.fromJson(Map<String, dynamic> json) =>
      _$DynamicStackFromJson(json);
}
