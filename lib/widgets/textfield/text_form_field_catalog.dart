import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/widgets/common/catalog_scaffold.dart';
import 'package:my_widget_catalog/gen/assets.gen.dart';
import 'package:my_widget_catalog/widgets/common/catalog_svg_icon.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';

class TextFormFieldCatalog extends StatefulWidget {
  const TextFormFieldCatalog({super.key});

  @override
  State<TextFormFieldCatalog> createState() => _TextFormFieldCatalogState();
}

class _TextFormFieldCatalogState extends State<TextFormFieldCatalog> {
  final style = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: CatalogColor.primary,
    decoration: TextDecoration.none,
  );

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return CatalogScaffold(
        title: l10n.textFormField,
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    CatalogForm(
                      FormType.name,
                      label: l10n.name,
                      prefixIconAsset: Assets.meLine,
                      validator: (value) {
                        const pattern = r'^.{1,8}$';
                        final regexp = RegExp(pattern);
                        if (value == null || !regexp.hasMatch(value)) {
                          return l10n.nameErrorText;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CatalogForm(
                      FormType.email,
                      label: l10n.email,
                      prefixIconAsset: Assets.inboxLine,
                      validator: (value) {
                        const pattern =
                            r"^[\w!#$%&'*+/=?`{|}~^-]+(\.[\w!#$%&'*+/=?`{|}~^-]+)*@([A-Z0-9-]{2,6})\.(?:\w{3}|\w{2}\.\w{2})$";
                        final regexp = RegExp(caseSensitive: false, pattern);
                        if (value == null || !regexp.hasMatch(value)) {
                          return l10n.emailErrorText;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CatalogForm(
                      FormType.phoneNumber,
                      label: l10n.phoneNumber,
                      prefixIconAsset: Assets.smartphoneLine,
                      validator: (value) {
                        const pattern = r'^\d{2,8}';
                        final regexp = RegExp(pattern);
                        if (value == null || !regexp.hasMatch(value)) {
                          return l10n.phoneNumber;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CatalogForm(FormType.password, label: l10n.password, prefixIconAsset: Assets.passwordLine,
                        validator: (value) {
                      const pattern = r'[a-z0-9]{6,10}';
                      final regexp = RegExp(pattern);
                      if (value == null || !regexp.hasMatch(value)) {
                        return l10n.passwordErrorText;
                      }
                      return null;
                    }, obscure: true),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Spacer(),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(backgroundColor: CatalogColor.primaryContainer),
                            onPressed: () {
                              _formKey.currentState?.validate();
                            },
                            label: Text(
                              l10n.ok,
                              style: style.copyWith(color: CatalogColor.onPrimaryContainer),
                            ),
                            icon: Assets.arrowLeftLine.catalogIcon(color: CatalogColor.inversePrimary)),
                      ],
                    )
                  ],
                ))));
  }
}

class CatalogForm extends StatelessWidget {
  const CatalogForm(this.type,
      {this.label = "", this.prefixIconAsset, this.validator = _defaultValidator, this.obscure = false, super.key});

  final FormType type;
  final String label;
  final SvgGenImage? prefixIconAsset;
  final String? Function(String?)? validator;
  final bool obscure;

  static String? _defaultValidator(String? value) => null;

  final style = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: CatalogColor.primaryContainer,
    decoration: TextDecoration.none,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: type.inputType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: CatalogColor.primaryContainer),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: CatalogColor.primaryContainer),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: CatalogColor.error),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: CatalogColor.error),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: label,
        labelStyle: style.copyWith(color: CatalogColor.primary),
        floatingLabelStyle: style,
        prefixIcon: prefixIconAsset?.catalogIcon(),
      ),
      obscureText: obscure,
    );
  }
}

enum FormType {
  name,
  email,
  phoneNumber,
  password,
}

extension FormTypeExt on FormType {
  TextInputType get inputType {
    switch (this) {
      case FormType.name:
        return TextInputType.name;
      case FormType.email:
        return TextInputType.emailAddress;
      case FormType.phoneNumber:
        return TextInputType.number;
      case FormType.password:
        return TextInputType.visiblePassword;
    }
  }
}
