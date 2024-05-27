// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_pageView.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicPageViewImpl _$$DynamicPageViewImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicPageViewImpl(
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.horizontal,
      reverse: json['reverse'] as bool? ?? false,
      controller: json['controller'],
      physics:
          $enumDecodeNullable(_$DynamicScrollPhysicsEnumMap, json['physics']),
      pageSnapping: json['pageSnapping'] as bool? ?? true,
      onPageChanged: json['onPageChanged'] as String?,
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      allowImplicitScrolling: json['allowImplicitScrolling'] as bool? ?? false,
      restorationId: json['restorationId'] as String?,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
      padEnds: json['padEnds'] as bool? ?? true,
      initialPage: (json['initialPage'] as num?)?.toInt() ?? 0,
      keepPage: json['keepPage'] ?? true,
      viewportFraction: (json['viewportFraction'] as num?)?.toDouble() ?? 1.0,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      findChildIndexCallback: json['findChildIndexCallback'] as String?,
    );

Map<String, dynamic> _$$DynamicPageViewImplToJson(
        _$DynamicPageViewImpl instance) =>
    <String, dynamic>{
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'reverse': instance.reverse,
      'controller': instance.controller,
      'physics': _$DynamicScrollPhysicsEnumMap[instance.physics],
      'pageSnapping': instance.pageSnapping,
      'onPageChanged': instance.onPageChanged,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'allowImplicitScrolling': instance.allowImplicitScrolling,
      'restorationId': instance.restorationId,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'padEnds': instance.padEnds,
      'initialPage': instance.initialPage,
      'keepPage': instance.keepPage,
      'viewportFraction': instance.viewportFraction,
      'children': instance.children,
      'findChildIndexCallback': instance.findChildIndexCallback,
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
