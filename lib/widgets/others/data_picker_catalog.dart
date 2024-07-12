import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class DatePickerCatalog extends StatefulWidget {
  const DatePickerCatalog({super.key});

  @override
  State<DatePickerCatalog> createState() => _DatePickerCatalogState();
}

class _DatePickerCatalogState extends State<DatePickerCatalog> {
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
            child: ListView(children: const [])));
  }
}

// https://api.flutter.dev/flutter/material/DatePickerDialog/DatePickerDialog.html
// 