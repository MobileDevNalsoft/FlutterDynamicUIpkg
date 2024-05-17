import 'package:flutter/foundation.dart';
import 'package:flutter_dynamic_ui/src/Utils/button_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_scaffold.freezed.dart';
part 'dynamic_scaffold.g.dart';

@freezed
class DynamicScaffold with _$DynamicScaffold {
  const factory DynamicScaffold({
    @Default(false) bool key,
    Map<String, dynamic>? appBar,
    Map<String, dynamic>? body,
    Map<String, dynamic>? floatingActionButton,
    DynamicFloatingActionButtonLocation? floatingActionButtonLocation,
    Map<String, dynamic>? bottomNavigationBar,
    Map<String, dynamic>? bottomSheet,
    String? backgroundColor,
    bool? resizeToAvoidBottomInset,
    @Default(true) bool primary,
    @Default(false) bool extendBody,
    @Default(false) bool extendBodyBehindAppBar,
  }) = _DynamicScaffold;

  factory DynamicScaffold.fromJson(Map<String, dynamic> json) =>
      _$DynamicScaffoldFromJson(json);
}
