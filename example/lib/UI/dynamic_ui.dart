import 'dart:convert';
import 'package:example/Provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class DynamicUI extends StatefulWidget {
  const DynamicUI({super.key});

  @override
  State<DynamicUI> createState() => _DynamicUIState();
}

class _DynamicUIState extends State<DynamicUI> {
  Map<String, dynamic>? data;
  Map<String, dynamic>? json;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future<void> getData() async {
    await FirebaseFirestore.instance
        .collection('dynamic')
        .doc('jsonUI')
        .get()
        .then((value) {
      data = value.data();
      json = data!['Screens']['Screen1'];
      Provider.of<UIProvider>(context, listen: false).setIsLoading(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String, void Function()> functions = {
      "homescreenbackButtonFunction": () {
        print('page popped');
      },
      "homescreenlogoutButtonFunction": () {
        print('log out');
      }
    };

    return SafeArea(
        child: Provider.of<UIProvider>(context, listen: true).isLoading
            ? const Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar:
                    JsonToWidget.fromJson(json!['appBar'], context, functions)
                        .toPreferredSizeWidget,
                body: Column(),
              ));
  }
}
