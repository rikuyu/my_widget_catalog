import 'package:flutter/material.dart';
import 'package:my_widget_catalog/catalog_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/list/grid_view_catalog.dart';
import 'package:my_widget_catalog/widgets/list/list_wheel_scroll_view_catalog.dart';
import 'package:my_widget_catalog/widgets/list/sliver_catalog.dart';

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
      body: ListView(
        children: [
          // List系
          CategoryTitle(l10n.categoryListTitle).build(context),
          WidgetItem(l10n.gridView, const GridViewCatalog()).build(context),
          WidgetItem(l10n.sliver, const SliverCatalog()).build(context),
          WidgetItem(
                  l10n.listWheelScrollView, const ListWheelScrollViewCatalog())
              .build(context),
          WidgetItem(l10n.draggableScrollableSheet).build(context),
          WidgetItem(l10n.flow).build(context),

          // Button系
          CategoryTitle(l10n.categoryButtonTitle).build(context),
          WidgetItem(l10n.elevatedButton).build(context),
          WidgetItem(l10n.outlinedButton).build(context),
          WidgetItem(l10n.textButton).build(context),
          WidgetItem(l10n.radio).build(context),
          WidgetItem(l10n.switchButton).build(context),
          WidgetItem(l10n.toggleButtons).build(context),

          // TextField系
          CategoryTitle(l10n.categoryTextFieldTitle).build(context),
        ],
      ),
    );
  }
}
