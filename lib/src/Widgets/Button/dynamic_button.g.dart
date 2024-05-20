// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicButtonImpl _$$DynamicButtonImplFromJson(Map<String, dynamic> json) =>
    _$DynamicButtonImpl(
      key: json['key'] as bool? ?? false,
      onPressed: json['onPressed'] as String?,
      child: json['child'] as Map<String, dynamic>?,
      style: json['style'] == null
          ? null
          : DynamicButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DynamicButtonImplToJson(_$DynamicButtonImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'onPressed': instance.onPressed,
      'child': instance.child,
      'style': instance.style,
    };
