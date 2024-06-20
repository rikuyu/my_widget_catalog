import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class SliverCatalog extends StatelessWidget {
  const SliverCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Container(
      color: CatalogColor.background,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(
              l10n.sliverAppBar,
              style: const TextStyle(color: CatalogColor.inversePrimary),
            ),
            expandedHeight: 200,
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color:
                      index.isOdd ? CatalogColor.green50 : CatalogColor.green20,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      l10n.sliverItemLabel(index),
                      style: const TextStyle(
                          fontSize: 20.0,
                          color: CatalogColor.inversePrimary,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(4.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      color: index.isOdd
                          ? CatalogColor.green50
                          : CatalogColor.green20,
                      child: Center(
                        child: Text(
                          index.toString(),
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: CatalogColor.inversePrimary,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ),
                      ));
                },
                childCount: 21,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 160.0,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: 1.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
