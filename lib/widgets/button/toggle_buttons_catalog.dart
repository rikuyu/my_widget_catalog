import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/catalog_divider.dart';
import 'package:my_widget_catalog/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';

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
                SvgPicture.asset(Assets.historyLine),
                SvgPicture.asset(Assets.expenditureLine),
                SvgPicture.asset(Assets.codeReaderLine),
                SvgPicture.asset(Assets.invoiceLine),
                SvgPicture.asset(Assets.arrivalLine),
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
                SvgPicture.asset(Assets.fastTrackLine),
                SvgPicture.asset(Assets.incomeLine),
                SvgPicture.asset(Assets.luggageLine),
                SvgPicture.asset(Assets.municipalityLine),
                SvgPicture.asset(Assets.pensionLine),
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
                SvgPicture.asset(Assets.attentionLine),
                SvgPicture.asset(Assets.childLine),
                SvgPicture.asset(Assets.familyLine),
                SvgPicture.asset(Assets.medicineLine),
                SvgPicture.asset(Assets.immunizationLine),
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
                SvgPicture.asset(
                  Assets.healthLine,
                  colorFilter: const ColorFilter.mode(CatalogColor.disable, BlendMode.srcIn),
                ),
                SvgPicture.asset(
                  Assets.publicOfferingLine,
                  colorFilter: const ColorFilter.mode(CatalogColor.disable, BlendMode.srcIn),
                ),
                SvgPicture.asset(
                  Assets.eApplicationLine,
                  colorFilter: const ColorFilter.mode(CatalogColor.disable, BlendMode.srcIn),
                ),
                SvgPicture.asset(
                  Assets.notificationLine,
                  colorFilter: const ColorFilter.mode(CatalogColor.disable, BlendMode.srcIn),
                ),
                SvgPicture.asset(
                  Assets.fastTrackLine,
                  colorFilter: const ColorFilter.mode(CatalogColor.disable, BlendMode.srcIn),
                ),
              ],
            ),
          ]),
        ));
  }
}
