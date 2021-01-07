/*
 * @Author GS
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterwebapp/model/image_model.dart';

class ImageWidget extends StatelessWidget {
  final ImageModel imageModel;

  const ImageWidget(this.imageModel);

  @override
  Widget build(BuildContext context) {
    if (imageModel.isSvg) {
      switch (imageModel.imageType) {
        case ImageType.asset:
          return SvgPicture.asset(
            imageModel.imageLocation,
            height: imageModel.height,
            width: imageModel.width,
            fit: imageModel.boxFit,
            color: imageModel.color,
          );
        case ImageType.network:
          return SvgPicture.network(
            imageModel.imageLocation,
            height: imageModel.height,
            width: imageModel.width,
            fit: imageModel.boxFit,
            color: imageModel.color,
          );
      }
    } else {
      switch (imageModel.imageType) {
        case ImageType.asset:
          return Image.asset(
            imageModel.imageLocation,
            height: imageModel.height,
            width: imageModel.width,
            fit: imageModel.boxFit,
            color: imageModel.color,
          );

        case ImageType.network:
          return CachedNetworkImage(
            imageUrl: imageModel.imageLocation,
            height: imageModel.height,
            width: imageModel.width,
            fit: imageModel.boxFit,
            color: imageModel.color,
            placeholder: imageModel.placeholderWidgetBuilder,
            errorWidget: imageModel.errorWidgetBuilder,
          );
      }
    }
    return Container();
  }
}
