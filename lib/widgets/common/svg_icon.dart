import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(this.icon, {this.width = 24.0, this.height = 24.0, super.key});

  final String icon;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width,
      height: height,
      fit: BoxFit.scaleDown,
      colorFilter: const ColorFilter.mode(CatalogColor.primaryContainer, BlendMode.srcIn),
    );
  }
}
