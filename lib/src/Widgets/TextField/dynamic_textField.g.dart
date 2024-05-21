// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_textField.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicTextFieldImpl _$$DynamicTextFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicTextFieldImpl(
      decoration: json['decoration'] == null
          ? null
          : DynamicInputDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      initialValue: json['initialValue'] as String? ?? '',
      keyboardType: $enumDecodeNullable(
          _$DynamicTextInputTypeEnumMap, json['keyboardType']),
      textInputAction: $enumDecodeNullable(
          _$TextInputActionEnumMap, json['textInputAction']),
      textCapitalization: $enumDecodeNullable(
              _$TextCapitalizationEnumMap, json['textCapitalization']) ??
          TextCapitalization.none,
      style: json['style'] == null
          ? null
          : DynamicTextStyle.fromJson(json['style']),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']) ??
          TextAlign.start,
      textAlignVertical: $enumDecodeNullable(
          _$DynamicTextAlignVerticalEnumMap, json['textAlignVertical']),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      readOnly: json['readOnly'] as bool? ?? false,
      showCursor: json['showCursor'] as bool?,
      expands: json['expands'] ?? false,
      autofocus: json['autofocus'] as bool? ?? false,
      obscuringCharacter: json['obscuringCharacter'] as String? ?? '•',
      maxLines: (json['maxLines'] as num?)?.toInt(),
      minLines: (json['minLines'] as num?)?.toInt(),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      obscureText: json['obscureText'] as bool? ?? false,
      enableSuggestions: json['enableSuggestions'] as bool? ?? true,
      enabled: json['enabled'] as bool?,
      cursorWidth: (json['cursorWidth'] as num?)?.toDouble() ?? 2,
      cursorHeight: (json['cursorHeight'] as num?)?.toDouble(),
      cursorColor: json['cursorColor'] as String?,
      hintText: json['hintText'] as String?,
      inputFormatters: (json['inputFormatters'] as List<dynamic>?)
              ?.map((e) =>
                  DynamicInputFormatter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DynamicTextFieldImplToJson(
        _$DynamicTextFieldImpl instance) =>
    <String, dynamic>{
      'decoration': instance.decoration,
      'initialValue': instance.initialValue,
      'keyboardType': _$DynamicTextInputTypeEnumMap[instance.keyboardType],
      'textInputAction': _$TextInputActionEnumMap[instance.textInputAction],
      'textCapitalization':
          _$TextCapitalizationEnumMap[instance.textCapitalization]!,
      'style': instance.style,
      'textAlign': _$TextAlignEnumMap[instance.textAlign]!,
      'textAlignVertical':
          _$DynamicTextAlignVerticalEnumMap[instance.textAlignVertical],
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'readOnly': instance.readOnly,
      'showCursor': instance.showCursor,
      'expands': instance.expands,
      'autofocus': instance.autofocus,
      'obscuringCharacter': instance.obscuringCharacter,
      'maxLines': instance.maxLines,
      'minLines': instance.minLines,
      'maxLength': instance.maxLength,
      'obscureText': instance.obscureText,
      'enableSuggestions': instance.enableSuggestions,
      'enabled': instance.enabled,
      'cursorWidth': instance.cursorWidth,
      'cursorHeight': instance.cursorHeight,
      'cursorColor': instance.cursorColor,
      'hintText': instance.hintText,
      'inputFormatters': instance.inputFormatters,
    };

const _$DynamicTextInputTypeEnumMap = {
  DynamicTextInputType.text: 'text',
  DynamicTextInputType.multiline: 'multiline',
  DynamicTextInputType.number: 'number',
  DynamicTextInputType.phone: 'phone',
  DynamicTextInputType.datetime: 'datetime',
  DynamicTextInputType.emailAddress: 'emailAddress',
  DynamicTextInputType.url: 'url',
  DynamicTextInputType.visiblePassword: 'visiblePassword',
  DynamicTextInputType.name: 'name',
  DynamicTextInputType.streetAddress: 'streetAddress',
  DynamicTextInputType.none: 'none',
};

const _$TextInputActionEnumMap = {
  TextInputAction.none: 'none',
  TextInputAction.unspecified: 'unspecified',
  TextInputAction.done: 'done',
  TextInputAction.go: 'go',
  TextInputAction.search: 'search',
  TextInputAction.send: 'send',
  TextInputAction.next: 'next',
  TextInputAction.previous: 'previous',
  TextInputAction.continueAction: 'continueAction',
  TextInputAction.join: 'join',
  TextInputAction.route: 'route',
  TextInputAction.emergencyCall: 'emergencyCall',
  TextInputAction.newline: 'newline',
};

const _$TextCapitalizationEnumMap = {
  TextCapitalization.words: 'words',
  TextCapitalization.sentences: 'sentences',
  TextCapitalization.characters: 'characters',
  TextCapitalization.none: 'none',
};

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};

const _$DynamicTextAlignVerticalEnumMap = {
  DynamicTextAlignVertical.top: 'top',
  DynamicTextAlignVertical.center: 'center',
  DynamicTextAlignVertical.bottom: 'bottom',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
