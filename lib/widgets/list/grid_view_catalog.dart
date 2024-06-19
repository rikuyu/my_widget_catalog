import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// https://docs.flutter.dev/cookbook/lists/grid-lists
// https://flutter.ctrnost.com/basic/layout/gridview/
class GridViewCatalog extends StatelessWidget {
  const GridViewCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.gridView,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        padding: const EdgeInsets.all(8.0),
        children: [
          for (var i = 0; i < 9; i++)
            Container(color: i.isEven ? Colors.redAccent : Colors.blueAccent)
        ],
      ),
    );
  }
}
