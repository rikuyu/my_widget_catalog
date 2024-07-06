import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class CheckBoxCatalog extends StatefulWidget {
  const CheckBoxCatalog({super.key});

  @override
  State<CheckBoxCatalog> createState() => _CheckBoxCatalogState();
}

class _CheckBoxCatalogState extends State<CheckBoxCatalog> {
  bool _flag = false;

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        activeColor: CatalogColor.primaryContainer,
                        value: _flag,
                        onChanged: (value) {
                          setState(() {
                            _flag = value!;
                          });
                        }),
                    const SizedBox(width: 8.0),
                    Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                            shape: const CircleBorder(),
                            activeColor: CatalogColor.primaryContainer,
                            value: _flag,
                            onChanged: (value) {
                              setState(() {
                                _flag = value!;
                              });
                            })),
                    const SizedBox(width: 8.0),
                    const Checkbox(value: false, onChanged: null),
                    const SizedBox(width: 8.0),
                    Checkbox(
                        isError: true,
                        activeColor: CatalogColor.primaryContainer,
                        value: _flag,
                        onChanged: (value) {
                          setState(() {
                            _flag = value!;
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
                      "${l10n.checkbox} $_flag",
                      style: labelStyle,
                    ),
                    value: _flag,
                    onChanged: (value) {
                      setState(() {
                        _flag = value!;
                      });
                    }),
                const CatalogDivider(),
                CheckboxListTile(
                    title: Text(
                      l10n.labelDisable,
                      style: labelStyle.copyWith(
                        color: CatalogColor.disable,
                      ),
                    ),
                    value: false,
                    onChanged: null),
                const CatalogDivider(),
                CheckboxListTile(
                  activeColor: CatalogColor.primaryContainer,
                  secondary: Assets.stampLine.catalogIcon(),
                  title: Text(
                    "${l10n.checkbox} $_flag",
                    style: labelStyle,
                  ),
                  subtitle: Text(
                    l10n.checkboxListTile,
                    style: labelStyle.copyWith(fontSize: 14.0),
                  ),
                  value: _flag,
                  onChanged: (value) {
                    setState(() {
                      _flag = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ],
            )));
  }
}
