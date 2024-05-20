import 'package:flutter/widgets.dart';

extension DynamicEdgeInsets on String? {
  EdgeInsetsGeometry? all(double value) {
    if (this?.isEmpty ?? true) return EdgeInsets.all(value);

    return EdgeInsets.all(value);
  }

  EdgeInsetsGeometry? symmetric(double horizontal, double vertical) {
    if (this?.isEmpty ?? true) {
      return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
    }

    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  EdgeInsetsGeometry? only(
      double top, double bottom, double left, double right) {
    if (this?.isEmpty ?? true) {
      return EdgeInsets.only(
          top: top, bottom: bottom, left: left, right: right);
    }

    return EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);
  }
}
