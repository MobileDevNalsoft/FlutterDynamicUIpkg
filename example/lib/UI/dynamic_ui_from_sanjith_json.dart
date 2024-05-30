import 'dart:convert';
import 'package:example/Provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DynamicUiFromSanjithJson extends StatefulWidget {
  const DynamicUiFromSanjithJson({super.key});

  @override
  State<DynamicUiFromSanjithJson> createState() =>
      _DynamicUiFromSanjithJsonState();
}

class _DynamicUiFromSanjithJsonState extends State<DynamicUiFromSanjithJson> {
  Map<String, dynamic>? json;
  // ignore: prefer_typing_uninitialized_variables
  late final sharedPreferences;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString)[0];
  }

  Future<void> getData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    // json = await loadJsonFromAssets("assets/jsons/jsonfromSanjith.json");
    json =
        await Provider.of<UIProvider>(context, listen: false).getJson('1', '2');
    print('json $json');
    Provider.of<UIProvider>(context, listen: false).setIsLoading(false);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Provider.of<UIProvider>(context, listen: true).isLoading
            ? const Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
                  title: const Text('Test Dynamic'),
                  centerTitle: true,
                ),
                backgroundColor: Colors.blueGrey.shade100,
                body: JsonToWidget.fromJson(json!, context)));
  }
}
