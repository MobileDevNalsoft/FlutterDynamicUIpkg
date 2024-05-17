// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicScaffoldImpl _$$DynamicScaffoldImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicScaffoldImpl(
      key: json['key'] as bool? ?? false,
      appBar: json['appBar'] as Map<String, dynamic>?,
      body: json['body'] as Map<String, dynamic>?,
      floatingActionButton:
          json['floatingActionButton'] as Map<String, dynamic>?,
      floatingActionButtonLocation: $enumDecodeNullable(
          _$DynamicFloatingActionButtonLocationEnumMap,
          json['floatingActionButtonLocation']),
      bottomNavigationBar: json['bottomNavigationBar'] as Map<String, dynamic>?,
      bottomSheet: json['bottomSheet'] as Map<String, dynamic>?,
      backgroundColor: json['backgroundColor'] as String?,
      resizeToAvoidBottomInset: json['resizeToAvoidBottomInset'] as bool?,
      primary: json['primary'] as bool? ?? true,
      extendBody: json['extendBody'] as bool? ?? false,
      extendBodyBehindAppBar: json['extendBodyBehindAppBar'] as bool? ?? false,
    );

Map<String, dynamic> _$$DynamicScaffoldImplToJson(
        _$DynamicScaffoldImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'appBar': instance.appBar,
      'body': instance.body,
      'floatingActionButton': instance.floatingActionButton,
      'floatingActionButtonLocation':
          _$DynamicFloatingActionButtonLocationEnumMap[
              instance.floatingActionButtonLocation],
      'bottomNavigationBar': instance.bottomNavigationBar,
      'bottomSheet': instance.bottomSheet,
      'backgroundColor': instance.backgroundColor,
      'resizeToAvoidBottomInset': instance.resizeToAvoidBottomInset,
      'primary': instance.primary,
      'extendBody': instance.extendBody,
      'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
    };

const _$DynamicFloatingActionButtonLocationEnumMap = {
  DynamicFloatingActionButtonLocation.startTop: 'startTop',
  DynamicFloatingActionButtonLocation.miniStartTop: 'miniStartTop',
  DynamicFloatingActionButtonLocation.centerTop: 'centerTop',
  DynamicFloatingActionButtonLocation.miniCenterTop: 'miniCenterTop',
  DynamicFloatingActionButtonLocation.endTop: 'endTop',
  DynamicFloatingActionButtonLocation.miniEndTop: 'miniEndTop',
  DynamicFloatingActionButtonLocation.startFloat: 'startFloat',
  DynamicFloatingActionButtonLocation.miniStartFloat: 'miniStartFloat',
  DynamicFloatingActionButtonLocation.centerFloat: 'centerFloat',
  DynamicFloatingActionButtonLocation.miniCenterFloat: 'miniCenterFloat',
  DynamicFloatingActionButtonLocation.endFloat: 'endFloat',
  DynamicFloatingActionButtonLocation.miniEndFloat: 'miniEndFloat',
  DynamicFloatingActionButtonLocation.startDocked: 'startDocked',
  DynamicFloatingActionButtonLocation.miniStartDocked: 'miniStartDocked',
  DynamicFloatingActionButtonLocation.centerDocked: 'centerDocked',
  DynamicFloatingActionButtonLocation.miniCenterDocked: 'miniCenterDocked',
  DynamicFloatingActionButtonLocation.endDocked: 'endDocked',
  DynamicFloatingActionButtonLocation.miniEndDocked: 'miniEndDocked',
};
