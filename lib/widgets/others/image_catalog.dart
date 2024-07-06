import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_divider.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class ImageCatalog extends StatelessWidget {
  const ImageCatalog({super.key});

  final style = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: CatalogColor.primary,
    decoration: TextDecoration.none,
  );

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    const padding = 24.0;
    final listChildWidth = screenWidth - padding;

    return CatalogScaffold(
        title: l10n.image,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(children: [
              Image.asset("assets/flutter_image.webp", width: listChildWidth),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              Image.network(
                "https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp",
                width: listChildWidth,
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              Image.network(
                "dummy",
                width: listChildWidth,
                loadingBuilder: (context, child, loadingProgress) {
                  return loadingProgress == null ? child : const CircularProgressIndicator();
                },
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Column(
                      children: [
                        const CatalogSvgIcon(Assets.informationLine, color: CatalogColor.error),
                        const SizedBox(height: 6.0),
                        Text(error.toString(), style: style),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 24.0),
              const CatalogDivider(),
              const SizedBox(height: 24.0),
              Image.asset(
                "assets/flutter_image.webp",
                width: listChildWidth,
                color: CatalogColor.primaryContainer,
                colorBlendMode: BlendMode.srcIn,
                semanticLabel: l10n.image,
              ),
            ])));
  }
}
