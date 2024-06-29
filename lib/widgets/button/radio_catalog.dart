import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class RadioCatalog extends StatelessWidget {
  const RadioCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.radio,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(children: [
            _SimpleRadioCatalog(),
            const SizedBox(height: 30.0),
            const CatalogDivider(),
            const SizedBox(height: 30.0),
            _RadioListTileCatalog(),
          ]),
        ));
  }
}

enum _Animal {
  dog,
  cat,
  mouse,
  bird,
}

class _SimpleRadioCatalog extends StatefulWidget {
  @override
  State<_SimpleRadioCatalog> createState() => _SimpleRadioCatalogState();
}

class _SimpleRadioCatalogState extends State<_SimpleRadioCatalog> {
  _Animal? _animal = _Animal.dog;

  final labelStyle = const TextStyle(
      fontSize: 20.0, color: CatalogColor.primary, fontWeight: FontWeight.normal, decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
                activeColor: CatalogColor.primaryContainer,
                value: _Animal.dog,
                groupValue: _animal,
                onChanged: (val) {
                  setState(() {
                    _animal = val;
                  });
                }),
            const SizedBox(width: 8.0),
            Text(
              _Animal.dog.name,
              style: labelStyle,
            )
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Radio(
                fillColor: MaterialStateProperty.all(CatalogColor.primaryContainer),
                value: _Animal.cat,
                groupValue: _animal,
                onChanged: (val) {
                  setState(() {
                    _animal = val;
                  });
                }),
            const SizedBox(width: 8.0),
            Text(
              _Animal.cat.name,
              style: labelStyle,
            )
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Radio(value: _Animal.mouse, groupValue: _animal, onChanged: null),
            const SizedBox(width: 8.0),
            Text(
              _Animal.mouse.name,
              style: labelStyle,
            )
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Radio.adaptive(
                value: _Animal.bird,
                groupValue: _animal,
                onChanged: (val) {
                  setState(() {
                    _animal = val;
                  });
                }),
            const SizedBox(width: 8.0),
            Text(
              _Animal.mouse.name,
              style: labelStyle,
            )
          ],
        ),
      ],
    );
  }
}

enum _BigTech {
  apple(displayName: "Apple"),
  google(displayName: "Google"),
  facebook(displayName: "Meta"),
  amazon(displayName: "Amazon"),
  nvidia(displayName: "NVIDIA"),
  ;

  const _BigTech({required this.displayName});

  final String displayName;
}

class _RadioListTileCatalog extends StatefulWidget {
  @override
  State<_RadioListTileCatalog> createState() => _RadioListTileCatalogState();
}

class _RadioListTileCatalogState extends State<_RadioListTileCatalog> {
  _BigTech? _company = _BigTech.apple;

  final labelStyle = const TextStyle(
      fontSize: 20.0, color: CatalogColor.primary, fontWeight: FontWeight.normal, decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Column(
      children: [
        RadioListTile(
            activeColor: CatalogColor.primaryContainer,
            title: Text(
              _BigTech.google.displayName,
              style: labelStyle,
            ),
            value: _BigTech.google,
            groupValue: _company,
            onChanged: (val) {
              setState(() {
                _company = val;
              });
            }),
        const CatalogDivider(),
        RadioListTile(
            activeColor: CatalogColor.primaryContainer,
            title: Text(
              _BigTech.apple.displayName,
              style: labelStyle,
            ),
            subtitle: Text(
              l10n.radioListTile,
              style: labelStyle.copyWith(fontSize: 14.0),
            ),
            secondary: SvgPicture.asset(
              Assets.lawsLine,
              colorFilter: const ColorFilter.mode(CatalogColor.primaryContainer, BlendMode.srcIn),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            value: _BigTech.apple,
            groupValue: _company,
            onChanged: (val) {
              setState(() {
                _company = val;
              });
            }),
        const CatalogDivider(),
        RadioListTile(
            title: Text(
              _BigTech.facebook.displayName,
              style: labelStyle.copyWith(
                color: CatalogColor.gray40,
              ),
            ),
            value: _BigTech.facebook,
            groupValue: _company,
            onChanged: null),
        const CatalogDivider(),
        RadioListTile(
            tileColor: CatalogColor.primaryContainer,
            title: Text(
              _BigTech.amazon.displayName,
              style: labelStyle.copyWith(color: CatalogColor.onPrimaryContainer),
            ),
            fillColor: MaterialStateProperty.all(CatalogColor.onPrimaryContainer),
            value: _BigTech.amazon,
            groupValue: _company,
            onChanged: (val) {
              setState(() {
                _company = val;
              });
            }),
        const CatalogDivider(),
        RadioListTile.adaptive(
            activeColor: CatalogColor.primaryContainer,
            title: Text(
              _BigTech.nvidia.displayName,
              style: labelStyle,
            ),
            value: _BigTech.nvidia,
            groupValue: _company,
            onChanged: (val) {
              setState(() {
                _company = val;
              });
            }),
      ],
    );
  }
}
