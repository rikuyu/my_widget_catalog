import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class ElevatedButtonCatalog extends StatelessWidget {
  const ElevatedButtonCatalog({super.key});

  final labelStyle = const TextStyle(
      fontSize: 20.0,
      color: CatalogColor.inversePrimary,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
      title: l10n.elevatedButton,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CatalogColor.primaryContainer,
                foregroundColor: CatalogColor.onPrimaryContainer,
              ),
              child: Text(
                l10n.buttonEnable,
                style: labelStyle,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CatalogColor.primaryContainer,
                  foregroundColor: CatalogColor.onPrimaryContainer,
                  shape: const CircleBorder(),
                  fixedSize: const Size(120, 120),
                ),
                child: Text(
                  l10n.buttonCircle,
                  style: labelStyle,
                )),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: null,
                child: Text(
                  l10n.buttonDisable,
                  style: labelStyle,
                )),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CatalogColor.primaryContainer,
                  foregroundColor: CatalogColor.onPrimaryContainer,
                  elevation: 12.0,
                ),
                child: Text(
                  l10n.buttonEnable,
                  style: labelStyle,
                )),
          ],
        ),
      ),
    );
  }
}