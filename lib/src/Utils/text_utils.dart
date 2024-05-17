import 'package:flutter/material.dart';

enum DynamicTextOverflowType {
  clip,
  ellipsis,
  visible,
  fade;

  TextOverflow get value {
    switch (this) {
      case DynamicTextOverflowType.clip:
        return TextOverflow.clip;
      case DynamicTextOverflowType.fade:
        return TextOverflow.fade;
      case DynamicTextOverflowType.visible:
        return TextOverflow.visible;
      case DynamicTextOverflowType.ellipsis:
        return TextOverflow.ellipsis;
    }
  }
}
