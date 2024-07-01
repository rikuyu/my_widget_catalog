import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class BadgeCatalog extends StatelessWidget {
  const BadgeCatalog({super.key});

  final style = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: CatalogColor.onPrimaryContainer,
    decoration: TextDecoration.none,
  );

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.badge,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                const SizedBox(height: 20.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Badge(
                      label: Text("1"),
                      backgroundColor: CatalogColor.primaryContainer,
                      textColor: CatalogColor.onPrimaryContainer,
                      child: CatalogSvgIcon(Assets.childLine),
                    ),
                    SizedBox(width: 30.0),
                    Badge(
                      label: Text("99+"),
                      backgroundColor: CatalogColor.primaryContainer,
                      textColor: CatalogColor.onPrimaryContainer,
                      child: CatalogSvgIcon(Assets.moneyLine),
                    ),
                    SizedBox(width: 30.0),
                    Badge(
                      label: Text("bank"),
                      backgroundColor: CatalogColor.primaryContainer,
                      textColor: CatalogColor.onPrimaryContainer,
                      child: CatalogSvgIcon(Assets.bankAccountLine),
                    ),
                    SizedBox(width: 30.0),
                    Badge(
                      label: Text("3"),
                      backgroundColor: CatalogColor.primaryContainer,
                      textColor: CatalogColor.onPrimaryContainer,
                      alignment: Alignment.bottomRight,
                      child: CatalogSvgIcon(Assets.notificationLine),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                const CatalogDivider(),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Badge.count(
                      count: 2,
                      child: const CatalogSvgIcon(Assets.notificationLine),
                    ),
                    const SizedBox(width: 30.0),
                    Badge.count(
                      count: 99,
                      child: const CatalogSvgIcon(Assets.documentsLine),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                const CatalogDivider(),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Badge.count(
                      count: 2,
                      child: Text(l10n.badge),
                    ),
                    const SizedBox(width: 26.0),
                    Badge.count(
                      count: 99,
                      child: Chip(label: Text(l10n.chip)),
                    ),
                    const SizedBox(width: 26.0),
                    Badge.count(
                      count: 99,
                      child: ElevatedButton(onPressed: () {}, child: Text(l10n.elevatedButton)),
                    ),
                  ],
                )
              ],
            )));
  }
}
