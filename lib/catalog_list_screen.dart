import 'package:flutter/material.dart';
import 'package:my_widget_catalog/catalog_item.dart';

class MyWidgetCatalog extends StatelessWidget {
  const MyWidgetCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Widget Catalog",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // List系
            const CategoryTitle(title: "List系").buildTitle(context),
            const WidgetItem(title: "GridView").buildTitle(context),
            const WidgetItem(title: "SliverList").buildTitle(context),
            const WidgetItem(title: "SliverGrid").buildTitle(context),
            const WidgetItem(title: "SliverAppBar").buildTitle(context),
            const WidgetItem(title: "ListWheelScrollView").buildTitle(context),
            const WidgetItem(title: "DraggableScrollableSheet")
                .buildTitle(context),
            const WidgetItem(title: "Flow").buildTitle(context),

            // Button系
            const CategoryTitle(title: "Button").buildTitle(context),
            const WidgetItem(title: "ElevatedButton").buildTitle(context),
            const WidgetItem(title: "OutlinedButton").buildTitle(context),
            const WidgetItem(title: "TextButton").buildTitle(context),

            // TextField系
            const CategoryTitle(title: "TextField").buildTitle(context),
          ],
        ),
      ),
    );
  }
}
