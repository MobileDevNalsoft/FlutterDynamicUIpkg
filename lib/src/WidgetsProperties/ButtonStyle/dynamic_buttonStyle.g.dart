// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_buttonStyle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicButtonStyleImpl _$$DynamicButtonStyleImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicButtonStyleImpl(
      alignment: json['alignment'] as String?,
      padding: json['padding'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['padding']),
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      fixedSize: json['fixedSize'] == null
          ? null
          : DynamicSize.fromJson(json['fixedSize'] as Map<String, dynamic>),
      minimumSize: json['minimumSize'] == null
          ? null
          : DynamicSize.fromJson(json['minimumSize'] as Map<String, dynamic>),
      maximumSize: json['maximumSize'] == null
          ? null
          : DynamicSize.fromJson(json['maximumSize'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : DynamicRoundedRectangleBorder.fromJson(
              json['shape'] as Map<String, dynamic>),
      side: json['side'] == null
          ? null
          : DynamicBorderSide.fromJson(json['side'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DynamicButtonStyleImplToJson(
        _$DynamicButtonStyleImpl instance) =>
    <String, dynamic>{
      'alignment': instance.alignment,
      'padding': instance.padding,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'elevation': instance.elevation,
      'fixedSize': instance.fixedSize,
      'minimumSize': instance.minimumSize,
      'maximumSize': instance.maximumSize,
      'shape': instance.shape,
      'side': instance.side,
    };
