// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_inputFormatter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicInputFormatterImpl _$$DynamicInputFormatterImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicInputFormatterImpl(
      type: $enumDecode(_$InputFormatterTypeEnumMap, json['type']),
      rule: json['rule'] as String?,
    );

Map<String, dynamic> _$$DynamicInputFormatterImplToJson(
        _$DynamicInputFormatterImpl instance) =>
    <String, dynamic>{
      'type': _$InputFormatterTypeEnumMap[instance.type]!,
      'rule': instance.rule,
    };

const _$InputFormatterTypeEnumMap = {
  InputFormatterType.allow: 'allow',
  InputFormatterType.deny: 'deny',
};
