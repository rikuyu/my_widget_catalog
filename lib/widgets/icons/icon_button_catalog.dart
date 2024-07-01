import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';
import 'package:my_widget_catalog/widgets/others/all_icon.dart';

class IconButttonCatalog extends StatelessWidget {
  const IconButttonCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.iconButton,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            padding: const EdgeInsets.all(8.0),
            children: iconList.entries.map((e) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: CatalogColor.primary),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: CatalogSvgIcon(
                          e.value,
                          color: CatalogColor.primary,
                        )),
                    const SizedBox(height: 8.0),
                    Text(e.key)
                  ],
                ),
              );
            }).toList(),
          ),
        ));
  }
}
