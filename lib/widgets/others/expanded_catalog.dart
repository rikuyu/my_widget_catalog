import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class ExpandedCatalog extends StatelessWidget {
  const ExpandedCatalog({super.key});

  final style = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: CatalogColor.primary,
    decoration: TextDecoration.none,
  );

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return CatalogScaffold(
        title: l10n.expanded,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
            child: ListView(children: [
              SizedBox(
                height: 150,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: CatalogColor.green10,
                        child: Center(
                          child: Text(l10n.expanded, style: style),
                        ),
                      ),
                    ),
                    const Block("1"),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 150,
                child: Row(
                  children: [
                    const Block("1"),
                    Expanded(
                      child: Container(
                        color: CatalogColor.green10,
                        child: Center(
                          child: Text(l10n.expanded, style: style),
                        ),
                      ),
                    ),
                    const Block("2"),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 150,
                child: Row(
                  children: [
                    const Block("1"),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: CatalogColor.green10,
                        child: Center(
                          child: Text(l10n.expanded, style: style),
                        ),
                      ),
                    ),
                    const Block("2"),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: CatalogColor.green10,
                        child: Center(
                          child: Text(l10n.expanded, style: style),
                        ),
                      ),
                    ),
                    const Block("3"),
                  ],
                ),
              ),
            ])));
  }
}

class Block extends StatelessWidget {
  const Block(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CatalogColor.primaryContainer,
      width: 30,
      child: Center(
        child: Text(label,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: CatalogColor.inversePrimary,
              decoration: TextDecoration.none,
            )),
      ),
    );
  }
}
