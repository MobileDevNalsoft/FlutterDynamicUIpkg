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
      "backgroundColor":"#cfd8dc",
      "appBar":{
        "type":"appBar",
        "title":{
          "type":"text",
          "data":"Server Driven UI"
        },
        "fontSize":"18",
        "centerTitle":true,
        "backgroundColor":"#78909c",
        "leading":{
          "type":"icon",
          "icon":"arrow_back_ios",
          "iconType":"material"
        },
        "actions":[
          {
            "type":"padding",
            "padding":{
              "right":10
            },
            "child":{
              "type":"icon",
              "icon":"power_settings_new_rounded",
              "iconType":"material"
            }
          }
        ]
      },
      "body": {
        "type":"center",
        "child": {
          "type":"textButton",
          "child":{
          "type": "text",
          "data": "Hello World",
          "style":{
            "fontWeight":"w800"
          },
          "onPressed":"textButtonFunction"
        }
        }
      }
    }
    ''';

    final dynamic parsedJson = jsonDecode(jsonData);
    final Widget? widget = JsonToWidget.fromJson(parsedJson, context);

    return SafeArea(child: widget!);
  }
}
