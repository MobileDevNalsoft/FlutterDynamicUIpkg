import 'dart:io';

import 'package:example/Provider/ui_provider.dart';
import 'package:example/UI/dynamic_ui.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await JsonToWidget.initialize();

  await Firebase.initializeApp(
      options: Platform.isIOS
          ? const FirebaseOptions(
              apiKey: "AIzaSyBGj3Z6ZH_eGbZszCJRjlZh8GKUPssqwYk",
              appId: "1:1066586839679:ios:40e6823def19ddf3dd7d4a",
              messagingSenderId: "1066586839679",
              projectId: "meals-management-app-37e6a")
          : const FirebaseOptions(
              apiKey: "AIzaSyBgn6YsKh5YqVgFCV6NzMbfqfROqI29BUE",
              appId: "1:1066586839679:android:8f9eea5ae77f7472dd7d4a",
              messagingSenderId: "1066586839679",
              projectId: "meals-management-app-37e6a"));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => UIProvider(),
      )
    ], child: const DynamicUI()),
  ));
}
