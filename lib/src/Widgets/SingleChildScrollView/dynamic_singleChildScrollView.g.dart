// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_singleChildScrollView.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicSingleChildScrollViewImpl _$$DynamicSingleChildScrollViewImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicSingleChildScrollViewImpl(
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.vertical,
      reverse: json['reverse'] as bool? ?? false,
      padding: json['padding'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['padding']),
      primary: json['primary'] as bool?,
      physics:
          $enumDecodeNullable(_$DynamicScrollPhysicsEnumMap, json['physics']),
      child: json['child'] as Map<String, dynamic>?,
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
      restorationId: json['restorationId'] as String?,
      keyboardDismissBehavior: $enumDecodeNullable(
              _$ScrollViewKeyboardDismissBehaviorEnumMap,
              json['keyboardDismissBehavior']) ??
          ScrollViewKeyboardDismissBehavior.manual,
    );

Map<String, dynamic> _$$DynamicSingleChildScrollViewImplToJson(
        _$DynamicSingleChildScrollViewImpl instance) =>
    <String, dynamic>{
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'reverse': instance.reverse,
      'padding': instance.padding,
      'primary': instance.primary,
      'physics': _$DynamicScrollPhysicsEnumMap[instance.physics],
      'child': instance.child,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'restorationId': instance.restorationId,
      'keyboardDismissBehavior': _$ScrollViewKeyboardDismissBehaviorEnumMap[
          instance.keyboardDismissBehavior]!,
    };

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};

const _$DynamicScrollPhysicsEnumMap = {
  DynamicScrollPhysics.never: 'never',
  DynamicScrollPhysics.bouncing: 'bouncing',
  DynamicScrollPhysics.clamping: 'clamping',
  DynamicScrollPhysics.fixed: 'fixed',
  DynamicScrollPhysics.page: 'page',
};

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$ScrollViewKeyboardDismissBehaviorEnumMap = {
  ScrollViewKeyboardDismissBehavior.manual: 'manual',
  ScrollViewKeyboardDismissBehavior.onDrag: 'onDrag',
};
