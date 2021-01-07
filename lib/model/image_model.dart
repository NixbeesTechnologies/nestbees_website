import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum ImageType { asset, network }

class ImageModel {
  final bool isSvg;
  final double height;
  final double width;
  final BoxFit boxFit;
  final ImageType imageType;
  final String imageLocation;
  final Color color;
  final PlaceholderWidgetBuilder placeholderWidgetBuilder;
  final LoadingErrorWidgetBuilder errorWidgetBuilder;

  ImageModel({
    this.boxFit = BoxFit.contain,
    @required this.imageLocation,
    this.height,
    this.width,
    this.color,
    this.placeholderWidgetBuilder,
    this.errorWidgetBuilder,
  })  : imageType = imageLocation.trim().startsWith('assets/')
            ? ImageType.asset
            : ImageType.network,
        isSvg = imageLocation.trim().startsWith('assets/')
            ? imageLocation.endsWith('\.svg')
            : Uri.parse(imageLocation).path.endsWith('\.svg');
}
