import 'package:flutter/material.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class CatalogScaffold extends StatelessWidget {
  const CatalogScaffold({required this.title, required this.body, super.key});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: CatalogColor.inversePrimary),
        ),
        backgroundColor: CatalogColor.primaryContainer,
        leading: IconButton(
          icon: Assets.arrowLeftLine.catalogIcon(color: CatalogColor.inversePrimary),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(color: CatalogColor.onPrimaryContainer, child: body),
    );
  }
}
