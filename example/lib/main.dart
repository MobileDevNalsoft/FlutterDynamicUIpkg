import 'package:example/UI/dynamic_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';

void main() async {
  await JsonToWidget.initialize();

  runApp(MaterialApp(
    home: const DynamicUI(),
  ));
}
