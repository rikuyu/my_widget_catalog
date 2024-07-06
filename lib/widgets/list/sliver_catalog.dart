import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';

class SliverCatalog extends StatelessWidget {
  const SliverCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Container(
      color: CatalogColor.background,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: CatalogColor.primaryContainer,
            title: Text(
              l10n.sliverAppBar,
              style: const TextStyle(color: CatalogColor.inversePrimary),
            ),
            expandedHeight: 200,
            leading: IconButton(
              icon: Assets.arrowLeftLine.catalogIcon(color: CatalogColor.inversePrimary),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            color: CatalogColor.green70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
              child: Center(
                child: Text(
                  l10n.sliverToBoxAdapter,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: CatalogColor.inversePrimary,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _listTile(index, l10n);
              },
              childCount: 10,
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverHeaderDelegate(
              minHeight: 120.0,
              maxHeight: 120.0,
              child: Container(
                color: CatalogColor.green70,
                child: Center(
                  child: Text(
                    l10n.sliverPersistentHeader,
                    style: const TextStyle(
                        fontSize: 20.0,
                        color: CatalogColor.inversePrimary,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(4.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _gridTile(index);
                },
                childCount: 27,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 160.0,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: 1.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listTile(int index, L10n l10n) {
    return Container(
      color: index.isOdd ? CatalogColor.green30 : CatalogColor.green10,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          l10n.sliverItemLabel(index),
          style: const TextStyle(
              fontSize: 20.0,
              color: CatalogColor.inversePrimary,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }

  Widget _gridTile(int index) {
    return Container(
        color: index.isOdd ? CatalogColor.green30 : CatalogColor.green10,
        child: Center(
          child: Text(
            index.toString(),
            style: const TextStyle(
                fontSize: 20.0,
                color: CatalogColor.inversePrimary,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none),
          ),
        ));
  }
}

class CustomSliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  CustomSliverHeaderDelegate({
    required this.maxHeight,
    required this.minHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(CustomSliverHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight || child != oldDelegate.child;
  }
}
