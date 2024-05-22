import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_dynamic_ui/src/Entry/JsonToWidgetParser.dart';
import 'package:flutter_dynamic_ui/src/Utils/widgetType_utils.dart';
import 'package:flutter_dynamic_ui/src/Utils/color_utils.dart';
import 'package:flutter_dynamic_ui/src/Widgets/Image/dynamic_image.dart';

class DynamicImageParser extends JsonToWidgetParser<DynamicImage> {
  const DynamicImageParser();

  @override
  String get type => WidgetType.image.name;

  @override
  DynamicImage getModel(Map<String, dynamic> json) =>
      DynamicImage.fromJson(json);

  @override
  Widget parse(BuildContext context, DynamicImage model) {
    switch (model.imageType) {
      case DynamicImageType.network:
        return _networkImage(model, context);
      case DynamicImageType.file:
        return _fileImage(model, context);
      case DynamicImageType.asset:
        return _assetImage(model, context);

      default:
        return _networkImage(model, context);
    }
  }

  Widget _networkImage(DynamicImage model, BuildContext context) =>
      Image.network(
        model.src,
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
  Widget _fileImage(DynamicImage model, BuildContext context) => Image.file(
        File(model.src),
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );

  Widget _assetImage(DynamicImage model, BuildContext context) => Image.asset(
        model.src,
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
}
