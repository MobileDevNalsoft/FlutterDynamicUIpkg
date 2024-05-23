// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_circleAvatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicCircleAvatarImpl _$$DynamicCircleAvatarImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicCircleAvatarImpl(
      child: json['child'] as Map<String, dynamic>?,
      backgroundColor: json['backgroundColor'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      foregroundImage: json['foregroundImage'] as String?,
      onBackgroundImageError:
          json['onBackgroundImageError'] as Map<String, dynamic>?,
      onForegroundImageError:
          json['onForegroundImageError'] as Map<String, dynamic>?,
      foregroundColor: json['foregroundColor'] as String?,
      radius: (json['radius'] as num?)?.toDouble(),
      minRadius: (json['minRadius'] as num?)?.toDouble(),
      maxRadius: (json['maxRadius'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DynamicCircleAvatarImplToJson(
        _$DynamicCircleAvatarImpl instance) =>
    <String, dynamic>{
      'child': instance.child,
      'backgroundColor': instance.backgroundColor,
      'backgroundImage': instance.backgroundImage,
      'foregroundImage': instance.foregroundImage,
      'onBackgroundImageError': instance.onBackgroundImageError,
      'onForegroundImageError': instance.onForegroundImageError,
      'foregroundColor': instance.foregroundColor,
      'radius': instance.radius,
      'minRadius': instance.minRadius,
      'maxRadius': instance.maxRadius,
    };
