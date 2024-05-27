// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_bottomNavigationBarItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicBottomNavigationBarItemImpl
    _$$DynamicBottomNavigationBarItemImplFromJson(Map<String, dynamic> json) =>
        _$DynamicBottomNavigationBarItemImpl(
          icon: json['icon'] as Map<String, dynamic>,
          label: json['label'] as String,
          activeIcon: json['activeIcon'] as Map<String, dynamic>?,
          backgroundColor: json['backgroundColor'] as String?,
          tooltip: json['tooltip'] as String?,
        );

Map<String, dynamic> _$$DynamicBottomNavigationBarItemImplToJson(
        _$DynamicBottomNavigationBarItemImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'label': instance.label,
      'activeIcon': instance.activeIcon,
      'backgroundColor': instance.backgroundColor,
      'tooltip': instance.tooltip,
    };
