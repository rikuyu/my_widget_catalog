import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';
import 'package:my_widget_catalog/widgets/common/all_icon.dart';

class IconCatalog extends StatelessWidget {
  const IconCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.icon,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: iconList.entries.map((e) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        e.key,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: CatalogColor.primary,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      trailing: CatalogSvgIcon(
                        e.value,
                        color: CatalogColor.primary,
                      ),
                    ),
                    const CatalogDivider()
                  ],
                );
              }).toList(),
            )));
  }
}
