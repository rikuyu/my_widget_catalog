import 'package:flutter/material.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

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
          icon: const Icon(
            Icons.arrow_back,
            color: CatalogColor.inversePrimary,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: body,
    );
  }
}
