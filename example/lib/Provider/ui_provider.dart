import 'dart:convert';
import 'package:customs/src.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIProvider extends ChangeNotifier {
  CustomAPI api = CustomAPI(
      'https://paas.nalsoft.net:4443/ords/xxma/serverDrivenUi/', Dio());
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

  Future<Map<String, dynamic>> getJson(String appId, String pageId) async {
    ApiResponse response =
        await api.get('serverDrivenJson?appId=$appId&pageId=$pageId');
    return jsonDecode(jsonDecode(response.response!.data)['data']['json']);
  }
}
