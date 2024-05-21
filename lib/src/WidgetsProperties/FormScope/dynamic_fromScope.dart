import 'package:flutter/cupertino.dart';
import 'package:flutter_dynamic_ui/src/Logger/logger.dart';

class DynamicFormScope extends InheritedWidget {
  const DynamicFormScope({
    super.key,
    required super.child,
    required this.formData,
    required this.formKey,
  });

  final Map<String, dynamic> formData;
  final GlobalKey<FormState> formKey;

  static DynamicFormScope? of(BuildContext context) {
    final DynamicFormScope? result =
        context.dependOnInheritedWidgetOfExactType<DynamicFormScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
          "DynamicFormScope.of() called with a context that does not contain a DynamicFormScope.");
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}
