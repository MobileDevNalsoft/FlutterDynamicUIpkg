// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_iconButton.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicIconButtonImpl _$$DynamicIconButtonImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicIconButtonImpl(
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      padding: json['padding'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['padding']),
      alignment:
          $enumDecodeNullable(_$DynamicAlignmentEnumMap, json['alignment']),
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      color: json['color'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      splashColor: json['splashColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      onPressed: json['onPressed'] as String?,
      autofocus: json['autofocus'] as bool? ?? false,
      tooltip: json['tooltip'] as String?,
      enableFeedback: json['enableFeedback'] as bool?,
      constraints: json['constraints'] == null
          ? null
          : DynamicBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
      style: json['style'] == null
          ? null
          : DynamicButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool?,
      selectedIcon: json['selectedIcon'] as Map<String, dynamic>?,
      icon: json['icon'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DynamicIconButtonImplToJson(
        _$DynamicIconButtonImpl instance) =>
    <String, dynamic>{
      'iconSize': instance.iconSize,
      'padding': instance.padding,
      'alignment': _$DynamicAlignmentEnumMap[instance.alignment],
      'splashRadius': instance.splashRadius,
      'color': instance.color,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'splashColor': instance.splashColor,
      'disabledColor': instance.disabledColor,
      'onPressed': instance.onPressed,
      'autofocus': instance.autofocus,
      'tooltip': instance.tooltip,
      'enableFeedback': instance.enableFeedback,
      'constraints': instance.constraints,
      'style': instance.style,
      'isSelected': instance.isSelected,
      'selectedIcon': instance.selectedIcon,
      'icon': instance.icon,
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
