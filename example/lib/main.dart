import 'dart:io';

import 'package:example/Provider/meeting_room_provider.dart';
import 'package:example/Provider/ui_provider.dart';
import 'package:example/UI/dynamic_ui.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_ui/src.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await JsonToWidget.initialize();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => UIProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => MeetingRoomProvider(),
      )
    ], child: const DynamicUI()),
  ));
}
