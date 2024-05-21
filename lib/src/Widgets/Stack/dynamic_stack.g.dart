// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicStackImpl _$$DynamicStackImplFromJson(Map<String, dynamic> json) =>
    _$DynamicStackImpl(
      alignment: $enumDecodeNullable(
              _$DynamicAlignmentDirectionalEnumMap, json['alignment']) ??
          DynamicAlignmentDirectional.topStart,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
      fit:
          $enumDecodeNullable(_$StackFitEnumMap, json['fit']) ?? StackFit.loose,
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DynamicStackImplToJson(_$DynamicStackImpl instance) =>
    <String, dynamic>{
      'alignment': _$DynamicAlignmentDirectionalEnumMap[instance.alignment]!,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'fit': _$StackFitEnumMap[instance.fit]!,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'children': instance.children,
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

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$StackFitEnumMap = {
  StackFit.loose: 'loose',
  StackFit.expand: 'expand',
  StackFit.passthrough: 'passthrough',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
