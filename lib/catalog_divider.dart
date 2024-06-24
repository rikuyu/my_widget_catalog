import 'package:flutter/material.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class CatalogDivider extends StatelessWidget {
  const CatalogDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1.0,
      color: CatalogColor.border,
    );
  }
}
