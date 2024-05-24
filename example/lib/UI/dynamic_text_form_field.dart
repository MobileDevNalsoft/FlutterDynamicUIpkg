import 'dart:convert';

import 'package:example/Provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:provider/provider.dart';

class DynamicTFF extends StatefulWidget {
  const DynamicTFF({super.key});

  @override
  State<DynamicTFF> createState() => _DynamicTFFState();
}

class _DynamicTFFState extends State<DynamicTFF> {
  Map<String, dynamic>? json;
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString);
  }

  Future<void> getData() async {
    json = await loadJsonFromAssets("assets/jsons/jsonUI.json");
    json = json?['dynamicTFF'];
    json!["TextFormField"]["child"]["controller"] = controller;
    json!["TextFormField"]["child"]["focusNode"] = focusNode;
    Provider.of<UIProvider>(context, listen: false).setIsLoadingTFF(false);
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> functions = {
      "textFormFieldonChanged": (value) {
        // ignore: avoid_print
        print(value);
      }
    };

    return PopScope(
      canPop: true,
      onPopInvoked: (_) async {
        Future.delayed(Duration.zero, () {
          Provider.of<UIProvider>(context, listen: false).setIsLoadingTFF(true);
        });
      },
      child: SafeArea(
          child: Provider.of<UIProvider>(context, listen: true).isLoadingTFF
              ? const Center(child: CircularProgressIndicator())
              : Scaffold(
                  appBar: JsonToWidget.fromJson(json!['AppBar'], context)
                      .toPreferredSizeWidget,
                  backgroundColor: Colors.blueGrey.shade100,
                  body: JsonToWidget.fromJson(
                      json!["TextFormField"], context, functions))),
    );
  }
}
