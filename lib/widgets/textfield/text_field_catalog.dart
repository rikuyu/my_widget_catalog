import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class TextFieldCatalog extends StatefulWidget {
  const TextFieldCatalog({super.key});

  @override
  State<TextFieldCatalog> createState() => _TextFieldCatalogState();
}

class _TextFieldCatalogState extends State<TextFieldCatalog> {
  final _controller = TextEditingController();

  final style = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: CatalogColor.primary,
    decoration: TextDecoration.none,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.textField,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(children: [
              TextField(
                autofocus: true,
                controller: _controller,
                maxLength: 10,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  labelText: l10n.textField,
                  labelStyle: style.copyWith(color: CatalogColor.primaryContainer, fontSize: 18.0),
                  icon: Assets.authenticationLine.catalogIcon(),
                  iconColor: CatalogColor.primaryContainer,
                  hintText: l10n.hintText(l10n.textField),
                  hintStyle: style,
                  helperText: l10n.hintText(l10n.textField),
                  helperStyle: style.copyWith(color: CatalogColor.primaryContainer),
                ),
                onSubmitted: (value) {},
              ),
              const SizedBox(height: 24.0),
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  hintText: l10n.hintText(l10n.textField),
                  hintStyle: style,
                  helperText: l10n.hintText(l10n.textField),
                  helperStyle: style.copyWith(color: CatalogColor.primaryContainer),
                  prefixIcon: Assets.childLine.catalogIcon(),
                  prefixIconColor: CatalogColor.onPrimaryContainer,
                  suffixIcon: Assets.fillableCardLine.catalogIcon(),
                  suffixIconColor: CatalogColor.onPrimaryContainer,
                  suffixText: l10n.textField,
                  suffixStyle: style.copyWith(color: CatalogColor.onPrimaryContainer),
                  fillColor: CatalogColor.green10,
                  filled: true,
                ),
                onChanged: (value) {},
              ),
              const SizedBox(height: 24.0),
              TextField(
                obscureText: true,
                controller: _controller,
                maxLength: 15,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: CatalogColor.primaryContainer),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: CatalogColor.primaryContainer),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: CatalogColor.error),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: l10n.hintText(l10n.textField),
                  hintStyle: style,
                  prefixIcon: Assets.copyLine.catalogIcon(),
                  prefixText: l10n.textField,
                  prefixStyle: style.copyWith(color: CatalogColor.primaryContainer),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {}, icon: Assets.familyLine.catalogIcon()),
                      IconButton(onPressed: () {}, icon: Assets.codeReaderLine.catalogIcon()),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                enabled: false,
                maxLength: 5,
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: CatalogColor.disable),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: l10n.labelDisable,
                  hintStyle: style.copyWith(color: CatalogColor.disable),
                  prefixIcon: Assets.arrowRightLine.catalogIcon(),
                  prefixIconColor: CatalogColor.disable,
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                maxLines: 4,
                controller: _controller,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: CatalogColor.primaryContainer),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: CatalogColor.primaryContainer),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: l10n.labelEnable,
                  hintStyle: style.copyWith(color: CatalogColor.primaryContainer),
                  prefixIcon: Assets.documentsLine.catalogIcon(),
                ),
              )
            ])));
  }
}
