import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/catalog_divider.dart';
import 'package:my_widget_catalog/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class CheckBoxCatalog extends StatefulWidget {
  const CheckBoxCatalog({super.key});

  @override
  State<CheckBoxCatalog> createState() => _CheckBoxCatalogState();
}

class _CheckBoxCatalogState extends State<CheckBoxCatalog> {
  bool? _flag1 = false;

  final labelStyle = const TextStyle(
      fontSize: 20.0, color: CatalogColor.primary, fontWeight: FontWeight.normal, decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.checkbox,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: CatalogColor.primaryContainer,
                        value: _flag1,
                        onChanged: (val) {
                          setState(() {
                            _flag1 = val!;
                          });
                        }),
                    const SizedBox(width: 8.0),
                    Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                            shape: const CircleBorder(),
                            activeColor: CatalogColor.primaryContainer,
                            value: _flag1,
                            onChanged: (val) {
                              setState(() {
                                _flag1 = val!;
                              });
                            })),
                    const SizedBox(width: 8.0),
                    const Checkbox(value: false, onChanged: null),
                    const SizedBox(width: 8.0),
                    Checkbox(
                        isError: true,
                        activeColor: CatalogColor.primaryContainer,
                        value: _flag1,
                        onChanged: (val) {
                          setState(() {
                            _flag1 = val!;
                          });
                        }),
                  ],
                ),
                const SizedBox(width: 8.0),
                const CatalogDivider(),
                const SizedBox(width: 8.0),
                CheckboxListTile(
                    activeColor: CatalogColor.primaryContainer,
                    title: Text(
                      l10n.labelEnable,
                      style: labelStyle,
                    ),
                    value: _flag1,
                    onChanged: (val) {
                      setState(() {
                        _flag1 = val!;
                      });
                    }),
                const CatalogDivider(),
                CheckboxListTile(
                    title: Text(
                      l10n.labelDisable,
                      style: labelStyle.copyWith(
                        color: CatalogColor.gray40,
                      ),
                    ),
                    value: false,
                    onChanged: null),
                const CatalogDivider(),
                CheckboxListTile(
                  activeColor: CatalogColor.primaryContainer,
                  secondary: const Icon(
                    Icons.add,
                    color: CatalogColor.primaryContainer,
                  ),
                  title: Text(
                    l10n.labelEnable,
                    style: labelStyle,
                  ),
                  subtitle: Text(
                    l10n.checkboxListTile,
                    style: labelStyle.copyWith(fontSize: 14.0),
                  ),
                  value: _flag1,
                  onChanged: (val) {
                    setState(() {
                      _flag1 = val!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ],
            )));
  }
}
