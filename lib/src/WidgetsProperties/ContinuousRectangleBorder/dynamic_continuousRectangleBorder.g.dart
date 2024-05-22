// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_continuousRectangleBorder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicContinuousRectangleBorderImpl
    _$$DynamicContinuousRectangleBorderImplFromJson(
            Map<String, dynamic> json) =>
        _$DynamicContinuousRectangleBorderImpl(
          borderSide: json['borderSide'] == null
              ? null
              : DynamicBorderSide.fromJson(
                  json['borderSide'] as Map<String, dynamic>),
          borderRadius: json['borderRadius'] == null
              ? null
              : DynamicBorderRadius.fromJson(json['borderRadius']),
        );

Map<String, dynamic> _$$DynamicContinuousRectangleBorderImplToJson(
        _$DynamicContinuousRectangleBorderImpl instance) =>
    <String, dynamic>{
      'borderSide': instance.borderSide,
      'borderRadius': instance.borderRadius,
    };
