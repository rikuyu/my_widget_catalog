import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_widget_catalog/catalog_divider.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';

class SwitchCatalog extends StatefulWidget {
  const SwitchCatalog({super.key});

  @override
  State<SwitchCatalog> createState() => _SwitchCatalogState();
}

class _SwitchCatalogState extends State<SwitchCatalog> {
  bool _flag = false;

  final labelStyle = const TextStyle(
      fontSize: 20.0, color: CatalogColor.primary, fontWeight: FontWeight.normal, decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.switchButton,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                      activeColor: CatalogColor.primaryContainer,
                      value: _flag,
                      onChanged: (value) {
                        setState(() {
                          _flag = value;
                        });
                      }),
                  const SizedBox(width: 8.0),
                  Switch(
                      activeTrackColor: CatalogColor.primaryContainer,
                      value: _flag,
                      onChanged: (value) {
                        setState(() {
                          _flag = value;
                        });
                      }),
                  const SizedBox(width: 8.0),
                  Switch(
                      inactiveThumbColor: CatalogColor.onError,
                      inactiveTrackColor: CatalogColor.errorContainer,
                      value: _flag,
                      onChanged: (value) {
                        setState(() {
                          _flag = value;
                        });
                      }),
                  const SizedBox(width: 8.0),
                  const Switch(value: false, onChanged: null),
                ],
              ),
              const SizedBox(height: 12.0),
              const CatalogDivider(),
              const SizedBox(height: 12.0),
              SwitchListTile(
                  activeColor: CatalogColor.primaryContainer,
                  title: Text("${l10n.switchButton} $_flag", style: labelStyle),
                  value: _flag,
                  onChanged: (value) {
                    setState(() {
                      _flag = value;
                    });
                  }),
              const CatalogDivider(),
              SwitchListTile(
                  activeTrackColor: CatalogColor.green10,
                  title: Text("${l10n.switchButton} $_flag",
                      style: labelStyle.copyWith(color: CatalogColor.inversePrimary)),
                  tileColor: CatalogColor.primaryContainer,
                  subtitle: Text(l10n.labelEnable,
                      style: labelStyle.copyWith(fontSize: 14.0, color: CatalogColor.inversePrimary)),
                  value: _flag,
                  onChanged: (value) {
                    setState(() {
                      _flag = value;
                    });
                  }),
              const CatalogDivider(),
              SwitchListTile(
                  title: Text(l10n.labelDisable, style: labelStyle.copyWith(color: CatalogColor.disable)),
                  secondary: SvgPicture.asset(
                    Assets.invoiceLine,
                    colorFilter: const ColorFilter.mode(CatalogColor.disable, BlendMode.srcIn),
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: false,
                  onChanged: null),
              const CatalogDivider(),
              SwitchListTile(
                  activeTrackColor: CatalogColor.primaryContainer,
                  title: Text("${l10n.switchButton} $_flag", style: labelStyle),
                  secondary: SvgPicture.asset(
                    Assets.moneyLine,
                    colorFilter: const ColorFilter.mode(CatalogColor.primaryContainer, BlendMode.srcIn),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _flag,
                  onChanged: (value) {
                    setState(() {
                      _flag = value;
                    });
                  }),
            ],
          ),
        ));
  }
}
