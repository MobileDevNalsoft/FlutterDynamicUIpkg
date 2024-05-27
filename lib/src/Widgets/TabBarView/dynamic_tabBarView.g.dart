// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_tabBarView.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicTabBarViewImpl _$$DynamicTabBarViewImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicTabBarViewImpl(
      children: (json['children'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      physics:
          $enumDecodeNullable(_$DynamicScrollPhysicsEnumMap, json['physics']),
      viewportFraction: (json['viewportFraction'] as num?)?.toDouble() ?? 1.0,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
    );

Map<String, dynamic> _$$DynamicTabBarViewImplToJson(
        _$DynamicTabBarViewImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
      'initialIndex': instance.initialIndex,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'physics': _$DynamicScrollPhysicsEnumMap[instance.physics],
      'viewportFraction': instance.viewportFraction,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
    };

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};

const _$DynamicScrollPhysicsEnumMap = {
  DynamicScrollPhysics.never: 'never',
  DynamicScrollPhysics.bouncing: 'bouncing',
  DynamicScrollPhysics.clamping: 'clamping',
  DynamicScrollPhysics.fixed: 'fixed',
  DynamicScrollPhysics.page: 'page',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
