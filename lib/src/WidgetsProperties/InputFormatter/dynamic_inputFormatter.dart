import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputFormatter/input_formatter_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_inputFormatter.freezed.dart';
part 'dynamic_inputFormatter.g.dart';

@freezed
class DynamicInputFormatter with _$DynamicInputFormatter {
  const factory DynamicInputFormatter({
    required InputFormatterType type,
    String? rule,
  }) = _DynamicInputFormatter;

  factory DynamicInputFormatter.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputFormatterFromJson(json);
}
