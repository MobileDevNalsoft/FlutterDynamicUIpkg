import 'package:flutter/widgets.dart';

extension ColorExt on String? {
  Color? toColor(BuildContext context) {
    if (this?.isEmpty ?? true) return null;
  }
}
