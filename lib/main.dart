import 'package:flutter/material.dart';
import 'package:my_widget_catalog/catalog_list_screen.dart';

void main() {
  runApp(const MyWidgetCatalogApp());
}

class MyWidgetCatalogApp extends StatelessWidget {
  const MyWidgetCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Catalog',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyWidgetCatalog(),
    );
  }
}
