import 'package:flutter/material.dart';

enum FloatingActionButtonType {
  extended,
  large,
  medium,
  small,
}

enum DynamicFloatingActionButtonLocation {
  startTop,
  miniStartTop,
  centerTop,
  miniCenterTop,
  endTop,
  miniEndTop,
  startFloat,
  miniStartFloat,
  centerFloat,
  miniCenterFloat,
  endFloat,
  miniEndFloat,
  startDocked,
  miniStartDocked,
  centerDocked,
  miniCenterDocked,
  endDocked,
  miniEndDocked;

  FloatingActionButtonLocation get value {
    switch (this) {
      case DynamicFloatingActionButtonLocation.startTop:
        return FloatingActionButtonLocation.startTop;
      case DynamicFloatingActionButtonLocation.miniStartTop:
        return FloatingActionButtonLocation.miniStartTop;
      case DynamicFloatingActionButtonLocation.centerTop:
        return FloatingActionButtonLocation.centerTop;
      case DynamicFloatingActionButtonLocation.miniCenterTop:
        return FloatingActionButtonLocation.miniCenterTop;
      case DynamicFloatingActionButtonLocation.endTop:
        return FloatingActionButtonLocation.endTop;
      case DynamicFloatingActionButtonLocation.miniEndTop:
        return FloatingActionButtonLocation.miniEndTop;
      case DynamicFloatingActionButtonLocation.startFloat:
        return FloatingActionButtonLocation.startFloat;
      case DynamicFloatingActionButtonLocation.miniStartFloat:
        return FloatingActionButtonLocation.miniStartFloat;
      case DynamicFloatingActionButtonLocation.centerFloat:
        return FloatingActionButtonLocation.centerFloat;
      case DynamicFloatingActionButtonLocation.miniCenterFloat:
        return FloatingActionButtonLocation.miniCenterFloat;
      case DynamicFloatingActionButtonLocation.endFloat:
        return FloatingActionButtonLocation.endFloat;
      case DynamicFloatingActionButtonLocation.miniEndFloat:
        return FloatingActionButtonLocation.miniEndFloat;
      case DynamicFloatingActionButtonLocation.startDocked:
        return FloatingActionButtonLocation.startDocked;
      case DynamicFloatingActionButtonLocation.miniStartDocked:
        return FloatingActionButtonLocation.miniStartDocked;
      case DynamicFloatingActionButtonLocation.centerDocked:
        return FloatingActionButtonLocation.centerDocked;
      case DynamicFloatingActionButtonLocation.miniCenterDocked:
        return FloatingActionButtonLocation.miniCenterDocked;
      case DynamicFloatingActionButtonLocation.endDocked:
        return FloatingActionButtonLocation.endDocked;
      case DynamicFloatingActionButtonLocation.miniEndDocked:
        return FloatingActionButtonLocation.miniEndDocked;
      default:
        return FloatingActionButtonLocation.centerDocked;
    }
  }
}
