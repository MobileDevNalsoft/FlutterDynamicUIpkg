import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';

class DynamicUI extends StatefulWidget {
  const DynamicUI({super.key});

  @override
  State<DynamicUI> createState() => _DynamicUIState();
}

class _DynamicUIState extends State<DynamicUI> {
  @override
  Widget build(BuildContext context) {
    const jsonData = '''
    {
      "type": "scaffold",
      "child": {
        "type": "sizedBox"
      }
    }
    ''';

    final dynamic parsedJson = jsonDecode(jsonData);
    final Widget? widget = JsonToWidget.fromJson(parsedJson, context);

    return widget!;
  }
}
