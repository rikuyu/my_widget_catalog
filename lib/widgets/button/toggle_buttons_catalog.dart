import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class ToggleButtonsCatalog extends StatefulWidget {
  const ToggleButtonsCatalog({super.key});

  @override
  State<ToggleButtonsCatalog> createState() => _ToggleButtonsCatalogState();
}

class _ToggleButtonsCatalogState extends State<ToggleButtonsCatalog> {
  final List<bool> _isSelected = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.toggleButtons,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(children: [
            ToggleButtons(
              isSelected: _isSelected,
              onPressed: (index) {
                setState(() {
                  for (int buttonIndex = 0; buttonIndex < _isSelected.length; buttonIndex++) {
                    if (buttonIndex == index) {
                      _isSelected[buttonIndex] = true;
                    } else {
                      _isSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              color: CatalogColor.primaryContainer,
              selectedColor: CatalogColor.green70,
              children: [
                Assets.historyLine.catalogIcon(),
                Assets.expenditureLine.catalogIcon(),
                Assets.codeReaderLine.catalogIcon(),
                Assets.invoiceLine.catalogIcon(),
                Assets.arrivalLine.catalogIcon(),
              ],
            ),
            const SizedBox(height: 20.0),
            const CatalogDivider(),
            const SizedBox(height: 20.0),
            ToggleButtons(
              isSelected: _isSelected,
              onPressed: (index) {
                setState(() {
                  for (int buttonIndex = 0; buttonIndex < _isSelected.length; buttonIndex++) {
                    if (buttonIndex == index) {
                      _isSelected[buttonIndex] = true;
                    } else {
                      _isSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              color: CatalogColor.primaryContainer,
              selectedColor: CatalogColor.inversePrimary,
              fillColor: CatalogColor.primaryContainer,
              renderBorder: false,
              splashColor: CatalogColor.blue30,
              highlightColor: CatalogColor.purple30,
              children: [
                Assets.fastTrackLine.catalogIcon(),
                Assets.incomeLine.catalogIcon(),
                Assets.luggageLine.catalogIcon(),
                Assets.municipalityLine.catalogIcon(),
                Assets.pensionLine.catalogIcon(),
              ],
            ),
            const SizedBox(height: 20.0),
            const CatalogDivider(),
            const SizedBox(height: 20.0),
            ToggleButtons(
              isSelected: _isSelected,
              onPressed: (index) {
                setState(() {
                  for (int buttonIndex = 0; buttonIndex < _isSelected.length; buttonIndex++) {
                    if (buttonIndex == index) {
                      _isSelected[buttonIndex] = true;
                    } else {
                      _isSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              color: CatalogColor.primaryContainer,
              selectedColor: CatalogColor.green70,
              borderRadius: BorderRadius.circular(30.0),
              borderColor: CatalogColor.primaryContainer,
              selectedBorderColor: CatalogColor.green70,
              splashColor: CatalogColor.primaryContainer,
              children: [
                Assets.attentionLine.catalogIcon(),
                Assets.childLine.catalogIcon(),
                Assets.familyLine.catalogIcon(),
                Assets.medicineLine.catalogIcon(),
                Assets.immunizationLine.catalogIcon(),
              ],
            ),
            const SizedBox(height: 20.0),
            const CatalogDivider(),
            const SizedBox(height: 20.0),
            ToggleButtons(
              isSelected: List.generate(5, (_) => false),
              onPressed: null,
              disabledColor: CatalogColor.disable,
              disabledBorderColor: CatalogColor.disable,
              children: [
                Assets.healthLine.catalogIcon(color: CatalogColor.disable),
                Assets.publicOfferingLine.catalogIcon(color: CatalogColor.disable),
                Assets.eApplicationLine.catalogIcon(color: CatalogColor.disable),
                Assets.notificationLine.catalogIcon(color: CatalogColor.disable),
                Assets.fastTrackLine.catalogIcon(color: CatalogColor.disable),
              ],
            ),
          ]),
        ));
  }
}
