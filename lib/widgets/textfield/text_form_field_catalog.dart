import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/widgets/common/svg_icon.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class TextFormFieldCatalog extends StatefulWidget {
  const TextFormFieldCatalog({super.key});

  @override
  State<TextFormFieldCatalog> createState() => _TextFormFieldCatalogState();
}

class _TextFormFieldCatalogState extends State<TextFormFieldCatalog> {
  final _globalKey = GlobalKey<FormState>();

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
        title: l10n.textFormField,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      l10n.formErrorText;
                    }
                    return null;
                  },
                )
              ],
            ))));
  }
}
