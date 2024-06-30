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
                child: Column(
                  children: [
                    CatalogForm(
                      FormType.name,
                      label: l10n.name,
                      prefixIconAsset: Assets.meLine,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return l10n.formErrorText(l10n.name);
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
                        if (value == null || value.isEmpty) {
                          return l10n.formErrorText(l10n.email);
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
                        if (value == null || value.isEmpty) {
                          return l10n.formErrorText(l10n.phoneNumber);
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CatalogForm(FormType.password, label: l10n.password, prefixIconAsset: Assets.passwordLine,
                        validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.formErrorText(l10n.password);
                      }
                      return null;
                    }, obscure: true),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                        onPressed: () {
                          _formKey.currentState?.validate();
                        },
                        icon: const CatalogSvgIcon(
                          Assets.arrowRightLine,
                          color: CatalogColor.onPrimaryContainer,
                        ),
                        label: Text(
                          l10n.ok,
                          style: style.copyWith(color: CatalogColor.onPrimaryContainer),
                        ))
                  ],
                ))));
  }
}

class CatalogForm extends StatelessWidget {
  const CatalogForm(this.type,
      {this.label = "",
      this.prefixIconAsset = "",
      this.validator = _defaultValidator,
      this.obscure = false,
      super.key});

  final FormType type;
  final String label;
  final String prefixIconAsset;
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
        labelText: label,
        labelStyle: style.copyWith(color: CatalogColor.primary),
        floatingLabelStyle: style,
        prefixIcon: prefixIconAsset.isNotEmpty ? CatalogSvgIcon(prefixIconAsset) : null,
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
