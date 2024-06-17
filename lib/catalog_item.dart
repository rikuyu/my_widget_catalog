import 'package:flutter/material.dart';

abstract class CatalogItem {
  Widget buildTitle(BuildContext context);
}

class CategoryTitle implements CatalogItem {
  const CategoryTitle({required this.title});
  final String title;

  @override
  Widget buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

class WidgetItem implements CatalogItem {
  const WidgetItem({required this.title});
  final String title;

  @override
  Widget buildTitle(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
