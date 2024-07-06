import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class CardCatalog extends StatelessWidget {
  const CardCatalog({super.key});

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
        title: l10n.card,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: ListView(
            children: [
              Card(
                color: CatalogColor.inversePrimary,
                shadowColor: CatalogColor.primaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 12.0,
                surfaceTintColor: CatalogColor.green10,
                margin: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Row(
                      children: [
                        Assets.moneyLine.catalogIcon(),
                        const SizedBox(width: 8.0),
                        Text(l10n.card, style: style.copyWith(fontSize: 24.0)),
                      ],
                    ),
                    const SizedBox(height: 12.0),
                    const CatalogDivider(),
                    const SizedBox(height: 12.0),
                    Text(l10n.description, style: style),
                    const SizedBox(height: 4.0),
                    Text(l10n.description, style: style.copyWith(color: CatalogColor.primaryContainer)),
                  ]),
                ),
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              Card(
                color: CatalogColor.inversePrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network("https://img.freepik.com/free-photo/blue-ocean-in-samoa_53876-146487.jpg")),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l10n.description, style: style),
                        const SizedBox(height: 4.0),
                        Text(l10n.description, style: style),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
