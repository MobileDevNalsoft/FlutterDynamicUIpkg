import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIProvider extends ChangeNotifier {
  bool isLoading = true;

  void setIsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
