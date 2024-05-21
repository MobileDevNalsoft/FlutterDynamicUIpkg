// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicIconImpl _$$DynamicIconImplFromJson(Map<String, dynamic> json) =>
    _$DynamicIconImpl(
      icon: json['icon'] as String,
      iconType: $enumDecode(_$IconTypeEnumMap, json['iconType']),
      size: (json['size'] as num?)?.toDouble(),
      color: json['color'] as String?,
      semanticLabel: json['semanticLabel'] as String?,
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
    );

Map<String, dynamic> _$$DynamicIconImplToJson(_$DynamicIconImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'iconType': _$IconTypeEnumMap[instance.iconType]!,
      'size': instance.size,
      'color': instance.color,
      'semanticLabel': instance.semanticLabel,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
    };

const _$IconTypeEnumMap = {
  IconType.material: 'material',
  IconType.cupertino: 'cupertino',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
