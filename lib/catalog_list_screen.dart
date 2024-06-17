import 'package:flutter/material.dart';
import 'package:my_widget_catalog/catalog_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyWidgetCatalog extends StatelessWidget {
  const MyWidgetCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.appTitle,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // List系
            CategoryTitle(l10n.categoryListTitle).buildTitle(context),
            WidgetItem(l10n.gridView).buildTitle(context),
            WidgetItem(l10n.sliverList).buildTitle(context),
            WidgetItem(l10n.sliverGrid).buildTitle(context),
            WidgetItem(l10n.listWheelScrollView).buildTitle(context),
            WidgetItem(l10n.draggableScrollableSheet).buildTitle(context),
            WidgetItem(l10n.flow).buildTitle(context),

            // Button系
            CategoryTitle(l10n.categoryButtonTitle).buildTitle(context),
            WidgetItem(l10n.elevatedButton).buildTitle(context),
            WidgetItem(l10n.outlinedButton).buildTitle(context),
            WidgetItem(l10n.textButton).buildTitle(context),

            // TextField系
            CategoryTitle(l10n.categoryTextFieldTitle).buildTitle(context),
          ],
        ),
      ),
    );
  }
}
