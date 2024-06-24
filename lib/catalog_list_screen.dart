import 'package:flutter/material.dart';
import 'package:my_widget_catalog/catalog_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/button/checkbox_catalog.dart';
import 'package:my_widget_catalog/widgets/button/elevated_button_catalog.dart';
import 'package:my_widget_catalog/widgets/button/outlined_button_catalog.dart';
import 'package:my_widget_catalog/widgets/button/radio_catalog.dart';
import 'package:my_widget_catalog/widgets/button/text_button_catalog.dart';
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
        backgroundColor: CatalogColor.primaryContainer,
      ),
      body: ListView(
        children: [
          // Button系
          CategoryTitle(l10n.categoryButtonTitle).build(context),
          WidgetItem(l10n.elevatedButton, const ElevatedButtonCatalog()).build(context),
          WidgetItem(l10n.outlinedButton, const OutlinedButtonCatalog()).build(context),
          WidgetItem(l10n.textButton, const TextButtonCatalog()).build(context),
          WidgetItem(l10n.radio, const RadioCatalog()).build(context),
          WidgetItem(l10n.checkbox, const CheckBoxCatalog()).build(context),
          WidgetItem(l10n.switchButton).build(context),
          WidgetItem(l10n.toggleButtons).build(context),

          // List系
          CategoryTitle(l10n.categoryListTitle).build(context),
          WidgetItem(l10n.gridView, const GridViewCatalog()).build(context),
          WidgetItem(l10n.listWheelScrollView, const ListWheelScrollViewCatalog()).build(context),
          WidgetItem(l10n.sliver, const SliverCatalog()).build(context),

          // TextField系
          CategoryTitle(l10n.categoryTextFieldTitle).build(context),
        ],
      ),
    );
  }
}
