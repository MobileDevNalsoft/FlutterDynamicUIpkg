// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_inputBorder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicInputBorderImpl _$$DynamicInputBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicInputBorderImpl(
      type:
          $enumDecodeNullable(_$DynamicInputBorderTypeEnumMap, json['type']) ??
              DynamicInputBorderType.underlineInputBorder,
      borderRadius: json['borderRadius'] == null
          ? null
          : DynamicBorderRadius.fromJson(json['borderRadius']),
      gapPadding: (json['gapPadding'] as num?)?.toDouble() ?? 4.0,
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      color: json['color'] as String?,
      gradient: json['gradient'] == null
          ? null
          : DynamicGradient.fromJson(json['gradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DynamicInputBorderImplToJson(
        _$DynamicInputBorderImpl instance) =>
    <String, dynamic>{
      'type': _$DynamicInputBorderTypeEnumMap[instance.type]!,
      'borderRadius': instance.borderRadius,
      'gapPadding': instance.gapPadding,
      'width': instance.width,
      'color': instance.color,
      'gradient': instance.gradient,
    };

const _$DynamicInputBorderTypeEnumMap = {
  DynamicInputBorderType.none: 'none',
  DynamicInputBorderType.underlineInputBorder: 'underlineInputBorder',
  DynamicInputBorderType.outlineInputBorder: 'outlineInputBorder',
};
