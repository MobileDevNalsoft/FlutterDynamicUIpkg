import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_expanded.freezed.dart';
part 'dynamic_expanded.g.dart';

@freezed
class DynamicExpanded with _$DynamicExpanded {
  const factory DynamicExpanded({
    @Default(1) int flex,
    Map<String, dynamic>? child,
  }) = _DynamicExpanded;

  factory DynamicExpanded.fromJson(Map<String, dynamic> json) =>
      _$DynamicExpandedFromJson(json);
}
