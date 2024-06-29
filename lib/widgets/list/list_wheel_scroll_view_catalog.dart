import 'package:flutter/material.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class ListWheelScrollViewCatalog extends StatelessWidget {
  const ListWheelScrollViewCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.listWheelScrollView,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ListWheelScrollView(
            itemExtent: 80.0,
            children: [
              for (var i = 1; i <= 30; i++)
                Container(
                  color: getColor(i),
                  child: Center(
                      child: Text(
                    i.toString(),
                    style: const TextStyle(color: CatalogColor.onPrimary),
                  )),
                )
            ],
          ),
        ));
  }

  Color getColor(int index) {
    switch (index % 3) {
      case 0:
        return CatalogColor.green80;
      case 1:
        return CatalogColor.green50;
      case 2:
        return CatalogColor.green20;
      default:
        return CatalogColor.black100;
    }
  }
}
