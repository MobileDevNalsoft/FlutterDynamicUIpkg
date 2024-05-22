// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_align.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicAlignImpl _$$DynamicAlignImplFromJson(Map<String, dynamic> json) =>
    _$DynamicAlignImpl(
      alignment: $enumDecodeNullable(
              _$DynamicAlignmentDirectionalEnumMap, json['alignment']) ??
          DynamicAlignmentDirectional.center,
      widthFactor: (json['widthFactor'] as num?)?.toDouble(),
      heightFactor: (json['heightFactor'] as num?)?.toDouble(),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DynamicAlignImplToJson(_$DynamicAlignImpl instance) =>
    <String, dynamic>{
      'alignment': _$DynamicAlignmentDirectionalEnumMap[instance.alignment]!,
      'widthFactor': instance.widthFactor,
      'heightFactor': instance.heightFactor,
      'child': instance.child,
    };

const _$DynamicAlignmentDirectionalEnumMap = {
  DynamicAlignmentDirectional.topStart: 'topStart',
  DynamicAlignmentDirectional.topCenter: 'topCenter',
  DynamicAlignmentDirectional.topEnd: 'topEnd',
  DynamicAlignmentDirectional.centerStart: 'centerStart',
  DynamicAlignmentDirectional.center: 'center',
  DynamicAlignmentDirectional.centerEnd: 'centerEnd',
  DynamicAlignmentDirectional.bottomStart: 'bottomStart',
  DynamicAlignmentDirectional.bottomCenter: 'bottomCenter',
  DynamicAlignmentDirectional.bottomEnd: 'bottomEnd',
};
