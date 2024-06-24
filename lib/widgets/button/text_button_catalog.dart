import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class TextButtonCatalog extends StatelessWidget {
  const TextButtonCatalog({super.key});

  final labelStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.textButton,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(children: [
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: CatalogColor.primaryContainer,
                  ),
                  child: Text(
                    l10n.buttonEnable,
                    style: labelStyle,
                  )),
              const SizedBox(height: 20.0),
              TextButton(
                  onPressed: null,
                  child: Text(
                    l10n.buttonDisable,
                    style: labelStyle,
                  )),
              const SizedBox(height: 20.0),
              TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    disabledForegroundColor: CatalogColor.errorContainer,
                  ),
                  child: Text(
                    l10n.buttonDisable,
                    style: labelStyle,
                  )),
              const SizedBox(height: 20.0),
              TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: CatalogColor.primaryContainer),
                  icon: const Icon(Icons.add),
                  label: Text(
                    l10n.buttonEnable,
                    style: labelStyle,
                  )),
            ])));
  }
}
