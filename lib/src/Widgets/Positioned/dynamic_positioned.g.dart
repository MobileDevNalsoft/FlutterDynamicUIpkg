// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_positioned.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicPositionedImpl _$$DynamicPositionedImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicPositionedImpl(
      positionedType: $enumDecodeNullable(
          _$DynamicPositionedTypeEnumMap, json['positionedType']),
      left: (json['left'] as num?)?.toDouble(),
      top: (json['top'] as num?)?.toDouble(),
      right: (json['right'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      start: (json['start'] as num?)?.toDouble(),
      end: (json['end'] as num?)?.toDouble(),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']) ??
              TextDirection.ltr,
      rect: json['rect'] == null
          ? null
          : DynamicRect.fromJson(json['rect'] as Map<String, dynamic>),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DynamicPositionedImplToJson(
        _$DynamicPositionedImpl instance) =>
    <String, dynamic>{
      'positionedType': _$DynamicPositionedTypeEnumMap[instance.positionedType],
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'width': instance.width,
      'height': instance.height,
      'start': instance.start,
      'end': instance.end,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection]!,
      'rect': instance.rect,
      'child': instance.child,
    };

const _$DynamicPositionedTypeEnumMap = {
  DynamicPositionedType.directional: 'directional',
  DynamicPositionedType.fill: 'fill',
  DynamicPositionedType.fromRect: 'fromRect',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
