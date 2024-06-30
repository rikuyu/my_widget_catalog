import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class CatalogSvgIcon extends StatelessWidget {
  const CatalogSvgIcon(this.icon,
      {this.width = 24.0, this.height = 24.0, this.color = CatalogColor.primaryContainer, super.key});

  final String icon;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width,
      height: height,
      fit: BoxFit.scaleDown,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
