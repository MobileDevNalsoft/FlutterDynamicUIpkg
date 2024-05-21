// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicImageImpl _$$DynamicImageImplFromJson(Map<String, dynamic> json) =>
    _$DynamicImageImpl(
      src: json['src'] as String,
      alignment:
          $enumDecodeNullable(_$DynamicAlignmentEnumMap, json['alignment']) ??
              DynamicAlignment.center,
      imageType:
          $enumDecodeNullable(_$DynamicImageTypeEnumMap, json['imageType']) ??
              DynamicImageType.network,
      color: json['color'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']),
    );

Map<String, dynamic> _$$DynamicImageImplToJson(_$DynamicImageImpl instance) =>
    <String, dynamic>{
      'src': instance.src,
      'alignment': _$DynamicAlignmentEnumMap[instance.alignment]!,
      'imageType': _$DynamicImageTypeEnumMap[instance.imageType]!,
      'color': instance.color,
      'width': instance.width,
      'height': instance.height,
      'fit': _$BoxFitEnumMap[instance.fit],
    };

const _$DynamicAlignmentEnumMap = {
  DynamicAlignment.topLeft: 'topLeft',
  DynamicAlignment.topCenter: 'topCenter',
  DynamicAlignment.topRight: 'topRight',
  DynamicAlignment.centerLeft: 'centerLeft',
  DynamicAlignment.center: 'center',
  DynamicAlignment.centerRight: 'centerRight',
  DynamicAlignment.bottomLeft: 'bottomLeft',
  DynamicAlignment.bottomCenter: 'bottomCenter',
  DynamicAlignment.bottomRight: 'bottomRight',
};

const _$DynamicImageTypeEnumMap = {
  DynamicImageType.file: 'file',
  DynamicImageType.network: 'network',
  DynamicImageType.asset: 'asset',
};

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};
