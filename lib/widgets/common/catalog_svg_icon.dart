import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

extension SvgGenImageExt on SvgGenImage {
  SvgPicture catalogIcon({Color color = CatalogColor.primaryContainer}) {
    return this
        .svg(width: 24.0, height: 24.0, fit: BoxFit.scaleDown, colorFilter: ColorFilter.mode(color, BlendMode.srcIn));
  }
}
