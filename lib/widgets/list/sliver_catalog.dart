import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SliverCatalog extends StatelessWidget {
  const SliverCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            l10n.sliverAppBar,
            style: const TextStyle(color: Colors.white),
          ),
          expandedHeight: 200,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.black : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    l10n.sliverItemLabel(index),
                    style: TextStyle(
                        fontSize: 20.0,
                        color: index.isOdd ? Colors.white : Colors.black,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                ),
              );
            },
            childCount: 10,
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  color: index.isOdd ? Colors.black : Colors.white,
                  child: Center(
                    child: Text(
                      index.toString(),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: index.isOdd ? Colors.white : Colors.black,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    ),
                  ));
            },
            childCount: 21,
          ),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 160.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 1.0,
          ),
        )
      ],
    );
  }
}
