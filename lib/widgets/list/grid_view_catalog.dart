import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class GridViewCatalog extends StatelessWidget {
  const GridViewCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
      title: l10n.gridView,
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        padding: const EdgeInsets.all(8.0),
        children: [
          for (var i = 0; i < 9; i++)
            Container(
                color: i.isEven ? CatalogColor.green50 : CatalogColor.green20)
        ],
      ),
    );
  }
}
