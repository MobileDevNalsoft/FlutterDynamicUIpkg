// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_safeArea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicSafeAreaImpl _$$DynamicSafeAreaImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicSafeAreaImpl(
      child: json['child'] as Map<String, dynamic>?,
      left: json['left'] as bool? ?? true,
      top: json['top'] as bool? ?? true,
      right: json['right'] as bool? ?? true,
      bottom: json['bottom'] as bool? ?? true,
      minimum: json['minimum'] == null
          ? const DynamicEdgeInsets()
          : DynamicEdgeInsets.fromJson(json['minimum']),
      maintainBottomViewPadding:
          json['maintainBottomViewPadding'] as bool? ?? false,
    );

Map<String, dynamic> _$$DynamicSafeAreaImplToJson(
        _$DynamicSafeAreaImpl instance) =>
    <String, dynamic>{
      'child': instance.child,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'minimum': instance.minimum,
      'maintainBottomViewPadding': instance.maintainBottomViewPadding,
    };
