// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_tabBar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicTabBarImpl _$$DynamicTabBarImplFromJson(Map<String, dynamic> json) =>
    _$DynamicTabBarImpl(
      tabs: (json['tabs'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      isScrollable: json['isScrollable'] as bool? ?? false,
      padding: json['padding'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['padding']),
      indicatorColor: json['indicatorColor'] as String?,
      automaticIndicatorColorAdjustment:
          json['automaticIndicatorColorAdjustment'] as bool? ?? true,
      indicatorWeight: (json['indicatorWeight'] as num?)?.toDouble() ?? 2.0,
      indicatorPadding: json['indicatorPadding'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['indicatorPadding']),
      indicatorSize: $enumDecodeNullable(
          _$TabBarIndicatorSizeEnumMap, json['indicatorSize']),
      labelColor: json['labelColor'] as String?,
      labelStyle: json['labelStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['labelStyle']),
      labelPadding: json['labelPadding'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['labelPadding']),
      unselectedLabelColor: json['unselectedLabelColor'] as String?,
      unselectedLabelStyle: json['unselectedLabelStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['unselectedLabelStyle']),
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      enableFeedback: json['enableFeedback'] as bool?,
      physics:
          $enumDecodeNullable(_$DynamicScrollPhysicsEnumMap, json['physics']),
      tabAlignment:
          $enumDecodeNullable(_$TabAlignmentEnumMap, json['tabAlignment']),
    );

Map<String, dynamic> _$$DynamicTabBarImplToJson(_$DynamicTabBarImpl instance) =>
    <String, dynamic>{
      'tabs': instance.tabs,
      'initialIndex': instance.initialIndex,
      'isScrollable': instance.isScrollable,
      'padding': instance.padding,
      'indicatorColor': instance.indicatorColor,
      'automaticIndicatorColorAdjustment':
          instance.automaticIndicatorColorAdjustment,
      'indicatorWeight': instance.indicatorWeight,
      'indicatorPadding': instance.indicatorPadding,
      'indicatorSize': _$TabBarIndicatorSizeEnumMap[instance.indicatorSize],
      'labelColor': instance.labelColor,
      'labelStyle': instance.labelStyle,
      'labelPadding': instance.labelPadding,
      'unselectedLabelColor': instance.unselectedLabelColor,
      'unselectedLabelStyle': instance.unselectedLabelStyle,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'enableFeedback': instance.enableFeedback,
      'physics': _$DynamicScrollPhysicsEnumMap[instance.physics],
      'tabAlignment': _$TabAlignmentEnumMap[instance.tabAlignment],
    };

const _$TabBarIndicatorSizeEnumMap = {
  TabBarIndicatorSize.tab: 'tab',
  TabBarIndicatorSize.label: 'label',
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

const _$TabAlignmentEnumMap = {
  TabAlignment.start: 'start',
  TabAlignment.startOffset: 'startOffset',
  TabAlignment.fill: 'fill',
  TabAlignment.center: 'center',
};
