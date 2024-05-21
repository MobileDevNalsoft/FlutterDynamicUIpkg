import 'package:flutter/material.dart';

enum DynamicTextAlignVertical {
  top,
  center,
  bottom;

  TextAlignVertical get value {
    switch (this) {
      case DynamicTextAlignVertical.top:
        return TextAlignVertical.top;
      case DynamicTextAlignVertical.center:
        return TextAlignVertical.center;
      case DynamicTextAlignVertical.bottom:
        return TextAlignVertical.bottom;
      default:
        return TextAlignVertical.center;
    }
  }
}

enum DynamicTextInputType {
  text,
  multiline,
  number,
  phone,
  datetime,
  emailAddress,
  url,
  visiblePassword,
  name,
  streetAddress,
  none;

  TextInputType get value {
    switch (this) {
      case DynamicTextInputType.text:
        return TextInputType.text;
      case DynamicTextInputType.multiline:
        return TextInputType.multiline;
      case DynamicTextInputType.number:
        return TextInputType.number;
      case DynamicTextInputType.phone:
        return TextInputType.phone;
      case DynamicTextInputType.datetime:
        return TextInputType.datetime;
      case DynamicTextInputType.emailAddress:
        return TextInputType.emailAddress;
      case DynamicTextInputType.url:
        return TextInputType.url;
      case DynamicTextInputType.visiblePassword:
        return TextInputType.visiblePassword;
      case DynamicTextInputType.name:
        return TextInputType.name;
      case DynamicTextInputType.streetAddress:
        return TextInputType.streetAddress;
      default:
        return TextInputType.none;
    }
  }
}
