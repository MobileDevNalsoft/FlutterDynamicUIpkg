// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_floatingLabelAlignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicInputDecorationThemeImpl _$$DynamicInputDecorationThemeImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicInputDecorationThemeImpl(
      labelStyle: json['labelStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['labelStyle']),
      floatingLabelStyle: json['floatingLabelStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['floatingLabelStyle']),
      helperStyle: json['helperStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['helperStyle']),
      helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
      hintStyle: json['hintStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['hintStyle']),
      errorStyle: json['errorStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['errorStyle']),
      errorMaxLines: (json['errorMaxLines'] as num?)?.toInt(),
      floatingLabelBehavior: $enumDecodeNullable(
          _$FloatingLabelBehaviorEnumMap, json['floatingLabelBehavior']),
      floatingLabelAlignment: $enumDecodeNullable(
          _$DynamicFloatingLabelAlignmentEnumMap,
          json['floatingLabelAlignment']),
      isDense: json['isDense'] as bool? ?? false,
      contentPadding: json['contentPadding'] == null
          ? null
          : DynamicEdgeInsets.fromJson(json['contentPadding']),
      isCollapsed: json['isCollapsed'] as bool? ?? false,
      iconColor: json['iconColor'] as String?,
      prefixStyle: json['prefixStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['prefixStyle']),
      prefixIconColor: json['prefixIconColor'] as String?,
      suffixStyle: json['suffixStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['suffixStyle']),
      suffixIconColor: json['suffixIconColor'] as String?,
      counterStyle: json['counterStyle'] == null
          ? null
          : DynamicTextStyle.fromJson(json['counterStyle']),
      filled: json['filled'] as bool? ?? false,
      fillColor: json['fillColor'] as String?,
      activeIndicatorBorder: json['activeIndicatorBorder'] == null
          ? null
          : DynamicBorderSide.fromJson(
              json['activeIndicatorBorder'] as Map<String, dynamic>),
      outlineBorder: json['outlineBorder'] == null
          ? null
          : DynamicBorderSide.fromJson(
              json['outlineBorder'] as Map<String, dynamic>),
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      errorBorder: json['errorBorder'] == null
          ? null
          : DynamicInputBorder.fromJson(
              json['errorBorder'] as Map<String, dynamic>),
      focusedBorder: json['focusedBorder'] == null
          ? null
          : DynamicInputBorder.fromJson(
              json['focusedBorder'] as Map<String, dynamic>),
      focusedErrorBorder: json['focusedErrorBorder'] == null
          ? null
          : DynamicInputBorder.fromJson(
              json['focusedErrorBorder'] as Map<String, dynamic>),
      disabledBorder: json['disabledBorder'] == null
          ? null
          : DynamicInputBorder.fromJson(
              json['disabledBorder'] as Map<String, dynamic>),
      enabledBorder: json['enabledBorder'] == null
          ? null
          : DynamicInputBorder.fromJson(
              json['enabledBorder'] as Map<String, dynamic>),
      border: json['border'] == null
          ? null
          : DynamicInputBorder.fromJson(json['border'] as Map<String, dynamic>),
      alignLabelWithHint: json['alignLabelWithHint'] as bool? ?? false,
      constraints: json['constraints'] == null
          ? null
          : DynamicBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DynamicInputDecorationThemeImplToJson(
        _$DynamicInputDecorationThemeImpl instance) =>
    <String, dynamic>{
      'labelStyle': instance.labelStyle,
      'floatingLabelStyle': instance.floatingLabelStyle,
      'helperStyle': instance.helperStyle,
      'helperMaxLines': instance.helperMaxLines,
      'hintStyle': instance.hintStyle,
      'errorStyle': instance.errorStyle,
      'errorMaxLines': instance.errorMaxLines,
      'floatingLabelBehavior':
          _$FloatingLabelBehaviorEnumMap[instance.floatingLabelBehavior],
      'floatingLabelAlignment': _$DynamicFloatingLabelAlignmentEnumMap[
          instance.floatingLabelAlignment],
      'isDense': instance.isDense,
      'contentPadding': instance.contentPadding,
      'isCollapsed': instance.isCollapsed,
      'iconColor': instance.iconColor,
      'prefixStyle': instance.prefixStyle,
      'prefixIconColor': instance.prefixIconColor,
      'suffixStyle': instance.suffixStyle,
      'suffixIconColor': instance.suffixIconColor,
      'counterStyle': instance.counterStyle,
      'filled': instance.filled,
      'fillColor': instance.fillColor,
      'activeIndicatorBorder': instance.activeIndicatorBorder,
      'outlineBorder': instance.outlineBorder,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'errorBorder': instance.errorBorder,
      'focusedBorder': instance.focusedBorder,
      'focusedErrorBorder': instance.focusedErrorBorder,
      'disabledBorder': instance.disabledBorder,
      'enabledBorder': instance.enabledBorder,
      'border': instance.border,
      'alignLabelWithHint': instance.alignLabelWithHint,
      'constraints': instance.constraints,
    };

const _$FloatingLabelBehaviorEnumMap = {
  FloatingLabelBehavior.never: 'never',
  FloatingLabelBehavior.auto: 'auto',
  FloatingLabelBehavior.always: 'always',
};

const _$DynamicFloatingLabelAlignmentEnumMap = {
  DynamicFloatingLabelAlignment.start: 'start',
  DynamicFloatingLabelAlignment.center: 'center',
};
