import 'package:flutter/material.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

abstract class CatalogItem {
  Widget build(BuildContext context);
}

class CategoryTitle implements CatalogItem {
  const CategoryTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 0),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: CatalogColor.primaryContainer,
        ),
      ),
    );
  }
}

class WidgetItem implements CatalogItem {
  WidgetItem(this.title, [this.destination]);

  final String title;
  Widget? destination;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (destination != null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => destination!));
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: CatalogColor.border))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.normal, color: CatalogColor.primary, fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
