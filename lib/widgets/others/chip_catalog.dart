import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class ChipCatalog extends StatefulWidget {
  const ChipCatalog({super.key});

  @override
  State<ChipCatalog> createState() => _ChipCatalogState();
}

class _ChipCatalogState extends State<ChipCatalog> {
  final style = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: CatalogColor.primaryContainer,
    decoration: TextDecoration.none,
  );

  int choiceIndex = 0;
  int inputs = 5;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.chip,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(children: [
              Row(
                children: [
                  Chip(
                      label: Text(l10n.chip),
                      labelStyle: style.copyWith(color: CatalogColor.onPrimaryContainer),
                      backgroundColor: CatalogColor.primaryContainer,
                      shape: const StadiumBorder(side: BorderSide(color: CatalogColor.primaryContainer))),
                  const SizedBox(width: 12.0),
                  Chip(
                      label: Text(l10n.chip, style: style),
                      labelStyle: style.copyWith(color: CatalogColor.primaryContainer),
                      deleteIcon: Assets.moneyLine.catalogIcon(),
                      backgroundColor: CatalogColor.onPrimaryContainer,
                      shape: const StadiumBorder(side: BorderSide(color: CatalogColor.primaryContainer))),
                  const SizedBox(width: 12.0),
                  Chip(
                      avatar: Assets.itineraryLine.catalogIcon(),
                      label: Text(l10n.chip, style: style),
                      labelStyle: style.copyWith(color: CatalogColor.primaryContainer),
                      deleteIcon: Assets.moneyLine.catalogIcon(),
                      backgroundColor: CatalogColor.onPrimaryContainer,
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0)),
                ],
              ),
              const SizedBox(height: 12),
              const CatalogDivider(),
              const SizedBox(height: 12),
              Row(
                children: [
                  ActionChip(
                      avatar: Assets.medicineLine.catalogIcon(),
                      label: Text(l10n.actionChip),
                      labelStyle: style,
                      backgroundColor: CatalogColor.onPrimaryContainer,
                      shape: const StadiumBorder(side: BorderSide(color: CatalogColor.primaryContainer)),
                      disabledColor: CatalogColor.error,
                      onPressed: () {}),
                  const SizedBox(width: 12.0),
                  ActionChip(
                      avatar: Assets.arrivalLine.catalogIcon(color: CatalogColor.disable),
                      label: Text(l10n.actionChip),
                      labelStyle: style.copyWith(color: CatalogColor.disable),
                      shape: const StadiumBorder(),
                      disabledColor: CatalogColor.onPrimaryContainer,
                      elevation: 8.0,
                      pressElevation: 4.0,
                      tooltip: l10n.chip,
                      onPressed: null),
                ],
              ),
              const SizedBox(height: 12),
              const CatalogDivider(),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12.0,
                children: [
                  ChoiceChip(
                    label: Text("${l10n.choiceChip} ${choiceIndex == 0}"),
                    labelStyle: style.copyWith(
                        color: choiceIndex == 0 ? CatalogColor.onPrimaryContainer : CatalogColor.primary),
                    shape: const StadiumBorder(),
                    selectedColor: CatalogColor.primaryContainer,
                    backgroundColor: CatalogColor.onPrimaryContainer,
                    selected: choiceIndex == 0,
                    onSelected: (bool flag) {
                      if (flag) {
                        setState(() {
                          choiceIndex = 0;
                        });
                      }
                    },
                  ),
                  ChoiceChip(
                    label: Text("${l10n.choiceChip} ${choiceIndex == 1}"),
                    labelStyle: style.copyWith(
                        color: choiceIndex == 1 ? CatalogColor.onPrimaryContainer : CatalogColor.primary),
                    shape: const StadiumBorder(),
                    selectedColor: CatalogColor.primaryContainer,
                    backgroundColor: CatalogColor.onPrimaryContainer,
                    selected: choiceIndex == 1,
                    onSelected: (bool flag) {
                      if (flag) {
                        setState(() {
                          choiceIndex = 1;
                        });
                      }
                    },
                  ),
                  ChoiceChip(
                    label: Text("${l10n.choiceChip} ${choiceIndex == 2}"),
                    labelStyle: style.copyWith(
                        color: choiceIndex == 2 ? CatalogColor.onPrimaryContainer : CatalogColor.primary),
                    shape: const StadiumBorder(),
                    selectedColor: CatalogColor.primaryContainer,
                    backgroundColor: CatalogColor.onPrimaryContainer,
                    selected: choiceIndex == 2,
                    onSelected: (bool flag) {
                      if (flag) {
                        setState(() {
                          choiceIndex = 2;
                        });
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const CatalogDivider(),
              const SizedBox(height: 12),
              FilterChip(
                label: Text(l10n.filterChip),
                labelStyle: style,
                shape: const StadiumBorder(),
                backgroundColor: CatalogColor.onPrimaryContainer,
                onSelected: (bool flag) {},
              ),
              const SizedBox(height: 12),
              const CatalogDivider(),
              const SizedBox(height: 12),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 12.0,
                children: List<Widget>.generate(
                  inputs,
                  (int index) {
                    return InputChip(
                        label: Text("${l10n.inputChip} $index"),
                        labelStyle: style.copyWith(color: CatalogColor.primary),
                        selected: selectedIndex == index,
                        onSelected: (bool selected) {
                          setState(() {
                            if (selectedIndex == index) {
                              selectedIndex = null;
                            } else {
                              selectedIndex = index;
                            }
                          });
                        },
                        onDeleted: () {
                          setState(() {
                            inputs = inputs - 1;
                          });
                        },
                        deleteIconColor: CatalogColor.black100);
                  },
                ).toList(),
              ),
            ])));
  }
}
