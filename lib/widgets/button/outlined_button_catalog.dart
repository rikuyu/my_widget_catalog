import 'package:flutter/material.dart';
import 'package:my_widget_catalog/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OutlinedButtonCatalog extends StatelessWidget {
  const OutlinedButtonCatalog({super.key});

  final labelStyle = const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.outlinedButton,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: CatalogColor.primaryContainer,
                    side:
                        const BorderSide(color: CatalogColor.primaryContainer),
                  ),
                  child: Text(l10n.buttonEnable, style: labelStyle)),
              const SizedBox(height: 20.0),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: CatalogColor.primaryContainer,
                    side: const BorderSide(
                      color: CatalogColor.primaryContainer,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    shape: const CircleBorder(),
                    fixedSize: const Size(120, 120),
                  ),
                  child: Text(l10n.buttonEnable, style: labelStyle)),
              const SizedBox(height: 20.0),
              OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                    disabledForegroundColor: CatalogColor.error,
                    side: const BorderSide(
                      color: CatalogColor.errorContainer,
                    ),
                  ),
                  child: Text(l10n.buttonDisable, style: labelStyle)),
              const SizedBox(height: 20.0),
              OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: CatalogColor.primaryContainer,
                    side: const BorderSide(
                      color: CatalogColor.primaryContainer,
                    ),
                  ),
                  icon: const Icon(Icons.add,
                      color: CatalogColor.primaryContainer),
                  label: Text(l10n.buttonEnable, style: labelStyle)),
              const SizedBox(height: 20.0),
              OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: CatalogColor.primaryContainer,
                    shape: const StadiumBorder(
                        side: BorderSide(color: CatalogColor.primaryContainer)),
                  ),
                  child: Text(l10n.buttonDisable, style: labelStyle)),
            ],
          ),
        ));
  }
}