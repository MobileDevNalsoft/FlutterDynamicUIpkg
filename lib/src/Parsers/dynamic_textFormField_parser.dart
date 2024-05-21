import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Enums/widget_type.dart';
import 'package:flutter_dynamic_ui/src/Logger/logger.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/inputValidationType_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/TextFormField/dynamic_textFormField.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/EdgeInsets/dynamic_edgeInsets.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/FieldValidator/dynamic_formValidator.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/FormScope/dynamic_fromScope.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputDecoration/dynamic_inputDecoration.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/InputFormatter/dynamic_inputFormatter.dart';
import 'package:flutter_dynamic_ui/src/WidgetsProperties/TextStyle/dynamic_textstyle.dart';

class DynamicTextFormFieldParser
    extends JsonToWidgetParser<DynamicTextFormField> {
  const DynamicTextFormFieldParser();

  @override
  DynamicTextFormField getModel(Map<String, dynamic> json) =>
      DynamicTextFormField.fromJson(json);

  @override
  String get type => WidgetType.textFormField.name;

  @override
  Widget parse(BuildContext context, DynamicTextFormField model) {
    return _TextFormFieldWidget(model, DynamicFormScope.of(context));
  }
}

class _TextFormFieldWidget extends StatefulWidget {
  const _TextFormFieldWidget(this.model, this.formScope);

  final DynamicTextFormField model;
  final DynamicFormScope? formScope;

  @override
  State<_TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<_TextFormFieldWidget> {
  late final TextEditingController _controller;
  final _focusNode = FocusNode();
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.model.initialValue);
    _obscureText = widget.model.obscureText ?? false;

    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = widget.model.initialValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      onChanged: (value) {
        if (widget.model.id != null) {
          widget.formScope?.formData[widget.model.id!] = value;
        }
      },
      keyboardType: widget.model.keyboardType?.value,
      textInputAction: widget.model.textInputAction,
      textCapitalization: widget.model.textCapitalization,
      textAlign: widget.model.textAlign,
      textAlignVertical: widget.model.textAlignVertical?.value,
      textDirection: widget.model.textDirection,
      readOnly: widget.model.readOnly,
      showCursor: widget.model.showCursor,
      autofocus: widget.model.autofocus,
      autovalidateMode: widget.model.autovalidateMode,
      obscuringCharacter: widget.model.obscuringCharacter,
      maxLines: widget.model.maxLines,
      minLines: widget.model.minLines,
      maxLength: widget.model.maxLength,
      obscureText: _obscureText,
      autocorrect: widget.model.autocorrect,
      smartDashesType: widget.model.smartDashesType,
      smartQuotesType: widget.model.smartQuotesType,
      maxLengthEnforcement: widget.model.maxLengthEnforcement,
      expands: widget.model.expands,
      keyboardAppearance: widget.model.keyboardAppearance,
      scrollPadding: widget.model.scrollPadding.parse,
      restorationId: widget.model.restorationId,
      enableIMEPersonalizedLearning: widget.model.enableIMEPersonalizedLearning,
      enableSuggestions: widget.model.enableSuggestions,
      enabled: widget.model.enabled,
      cursorWidth: widget.model.cursorWidth,
      cursorHeight: widget.model.cursorHeight,
      cursorColor: widget.model.cursorColor?.toColor(context),
      style: widget.model.style?.parse(context),
      decoration: widget.model.decoration.parse(context),
      inputFormatters: widget.model.inputFormatters
          .map((DynamicInputFormatter formatter) =>
              formatter.type.format(formatter.rule ?? ""))
          .toList(),
      validator: (value) {
        return _validate(
          value,
          widget.model,
        );
      },
    );
  }

  String? _validate(String? value, DynamicTextFormField model) {
    if (value != null && widget.model.validatorRules.isNotEmpty) {
      for (DynamicFormFieldValidator validator in widget.model.validatorRules) {
        try {
          final validationType = InputValidationType.values.firstWhere(
            (e) => e.name == validator.rule,
            orElse: () => InputValidationType.general,
          );

          if (validationType == InputValidationType.general) {
            if (!InputValidationType.general.validate(value, validator.rule)) {
              return validator.message;
            }
          } else {
            if (!validationType.validate(value, validator.rule)) {
              return validator.message;
            }
          }
        } catch (e) {
          Log.e(e);
        }
      }
    }

    return null;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
