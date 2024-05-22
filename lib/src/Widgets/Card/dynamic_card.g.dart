// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicCardImpl _$$DynamicCardImplFromJson(Map<String, dynamic> json) =>
    _$DynamicCardImpl(
      color: json['color'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      borderOnForeground: json['borderOnForeground'] as bool? ?? true,
      margin: json['margin'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['margin']),
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
      child: json['child'] as Map<String, dynamic>?,
      semanticContainer: json['semanticContainer'] as bool? ?? true,
      shape: json['shape'] == null
          ? null
          : DynamicRoundedRectangleBorder.fromJson(
              json['shape'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DynamicCardImplToJson(_$DynamicCardImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': instance.elevation,
      'borderOnForeground': instance.borderOnForeground,
      'margin': instance.margin,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
      'child': instance.child,
      'semanticContainer': instance.semanticContainer,
      'shape': instance.shape,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
