// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_transform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicTransformImpl _$$DynamicTransformImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicTransformImpl(
      child: json['child'] as Map<String, dynamic>,
      xy: (json['xy'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      radians: (json['radians'] as num?)?.toDouble(),
      scale: (json['scale'] as num?)?.toDouble(),
      transform: json['transform'] as String,
    );

Map<String, dynamic> _$$DynamicTransformImplToJson(
        _$DynamicTransformImpl instance) =>
    <String, dynamic>{
      'child': instance.child,
      'xy': instance.xy,
      'radians': instance.radians,
      'scale': instance.scale,
      'transform': instance.transform,
    };
