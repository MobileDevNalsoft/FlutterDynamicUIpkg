import 'package:flutter/material.dart';

abstract class JsonToWidgetParser<T> {
  const JsonToWidgetParser();

  String get type;

  T getModel(Map<String, dynamic> json);

  Widget parse(BuildContext context, T model) {
    return const Placeholder();
  }

  Widget parseWithFunctions(
      BuildContext context, T model, Map<String, void Function()> functions) {
    return const Placeholder();
  }
}
