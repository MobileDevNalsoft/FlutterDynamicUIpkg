import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIProvider extends ChangeNotifier {
  bool isLoading = true;
  bool isLoadingTFF = true;

  void setIsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void setIsLoadingTFF(bool value) {
    isLoadingTFF = value;
    notifyListeners();
  }
}
