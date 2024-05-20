// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicRoundedRectangleBorderImpl
    _$$DynamicRoundedRectangleBorderImplFromJson(Map<String, dynamic> json) =>
        _$DynamicRoundedRectangleBorderImpl(
          side: json['side'] == null
              ? null
              : DynamicBorderSide.fromJson(
                  json['side'] as Map<String, dynamic>),
          borderRadius: json['borderRadius'] == null
              ? null
              : DynamicBorderRadius.fromJson(json['borderRadius']),
        );

Map<String, dynamic> _$$DynamicRoundedRectangleBorderImplToJson(
        _$DynamicRoundedRectangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
