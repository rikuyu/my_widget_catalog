import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class SliderCatalog extends StatefulWidget {
  const SliderCatalog({super.key});

  @override
  State<SliderCatalog> createState() => _SliderCatalogState();
}

class _SliderCatalogState extends State<SliderCatalog> {
  final labelStyle = const TextStyle(
      fontSize: 20.0,
      color: CatalogColor.inversePrimary,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);

  double progress = 0.0;
  RangeValues _currentRanges = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.slider,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(children: [
              Slider(
                max: 5,
                min: 0,
                value: progress,
                onChanged: (value) {
                  setState(() {
                    progress = value;
                  });
                },
                label: progress.toString(),
                activeColor: CatalogColor.primaryContainer,
                inactiveColor: CatalogColor.gray20,
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              Slider(
                max: 5,
                min: 0,
                value: progress,
                onChanged: (value) {
                  setState(() {
                    progress = value;
                  });
                },
                label: progress.toInt().toString(),
                activeColor: CatalogColor.primaryContainer,
                inactiveColor: CatalogColor.gray20,
                divisions: 5,
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              const Slider(
                max: 5,
                min: 0,
                value: 2,
                onChanged: null,
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              RangeSlider(
                values: _currentRanges,
                max: 100,
                labels: RangeLabels(
                  _currentRanges.start.round().toString(),
                  _currentRanges.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRanges = values;
                  });
                },
                activeColor: CatalogColor.primaryContainer,
                inactiveColor: CatalogColor.gray20,
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              RangeSlider(
                values: _currentRanges,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  _currentRanges.start.round().toString(),
                  _currentRanges.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRanges = values;
                  });
                },
                activeColor: CatalogColor.primaryContainer,
                inactiveColor: CatalogColor.gray20,
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              RangeSlider(
                values: const RangeValues(10, 40),
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  _currentRanges.start.round().toString(),
                  _currentRanges.end.round().toString(),
                ),
                onChanged: null,
              ),
            ])));
  }
}
