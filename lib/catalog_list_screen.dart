import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_widget_catalog/theme/catalog_color.dart';
import 'package:my_widget_catalog/widgets/button/checkbox_catalog.dart';
import 'package:my_widget_catalog/widgets/common/catalog_item.dart';
import 'package:my_widget_catalog/widgets/button/elevated_button_catalog.dart';
import 'package:my_widget_catalog/widgets/button/outlined_button_catalog.dart';
import 'package:my_widget_catalog/widgets/button/radio_catalog.dart';
import 'package:my_widget_catalog/widgets/button/switch_catalog.dart';
import 'package:my_widget_catalog/widgets/button/text_button_catalog.dart';
import 'package:my_widget_catalog/widgets/button/toggle_buttons_catalog.dart';
import 'package:my_widget_catalog/widgets/icons/badge_catalog.dart';
import 'package:my_widget_catalog/widgets/icons/icon_button_catalog.dart';
import 'package:my_widget_catalog/widgets/icons/icon_catalog.dart';
import 'package:my_widget_catalog/widgets/list/grid_view_catalog.dart';
import 'package:my_widget_catalog/widgets/list/list_wheel_scroll_view_catalog.dart';
import 'package:my_widget_catalog/widgets/list/sliver_catalog.dart';
import 'package:my_widget_catalog/widgets/others/card_catalog.dart';
import 'package:my_widget_catalog/widgets/others/chip_catalog.dart';
import 'package:my_widget_catalog/widgets/others/image_catalog.dart';
import 'package:my_widget_catalog/widgets/others/slider_catalog.dart';
import 'package:my_widget_catalog/widgets/textfield/text_field_catalog.dart';
import 'package:my_widget_catalog/widgets/textfield/text_form_field_catalog.dart';

class MyWidgetCatalog extends StatelessWidget {
  const MyWidgetCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.appTitle,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: CatalogColor.primaryContainer,
      ),
      body: Container(
        color: CatalogColor.onPrimaryContainer,
        child: ListView(
          children: [
            // Button系
            CategoryTitle(l10n.categoryButtonTitle).build(context),
            WidgetItem(l10n.elevatedButton, const ElevatedButtonCatalog()).build(context),
            WidgetItem(l10n.outlinedButton, const OutlinedButtonCatalog()).build(context),
            WidgetItem(l10n.textButton, const TextButtonCatalog()).build(context),
            WidgetItem(l10n.radio, const RadioCatalog()).build(context),
            WidgetItem(l10n.checkbox, const CheckBoxCatalog()).build(context),
            WidgetItem(l10n.switchButton, const SwitchCatalog()).build(context),
            WidgetItem(l10n.toggleButtons, const ToggleButtonsCatalog()).build(context),

            // List系
            CategoryTitle(l10n.categoryListTitle).build(context),
            WidgetItem(l10n.gridView, const GridViewCatalog()).build(context),
            WidgetItem(l10n.listWheelScrollView, const ListWheelScrollViewCatalog()).build(context),
            WidgetItem(l10n.sliver, const SliverCatalog()).build(context),

            // TextField系
            CategoryTitle(l10n.categoryTextFieldTitle).build(context),
            WidgetItem(l10n.textField, const TextFieldCatalog()).build(context),
            WidgetItem(l10n.textFormField, const TextFormFieldCatalog()).build(context),

            // Icon
            CategoryTitle(l10n.iconTitle).build(context),
            WidgetItem(l10n.icon, const IconCatalog()).build(context),
            WidgetItem(l10n.iconButton, const IconButttonCatalog()).build(context),
            WidgetItem(l10n.badge, const BadgeCatalog()).build(context),

            // その他
            CategoryTitle(l10n.otherTitle).build(context),
            WidgetItem(l10n.chip, const ChipCatalog()).build(context),
            WidgetItem(l10n.card, const CardCatalog()).build(context),
            WidgetItem(l10n.image, const ImageCatalog()).build(context),
            WidgetItem(l10n.slider, const SliderCatalog()).build(context),
            WidgetItem("(TODO) ${l10n.expanded}").build(context),
            WidgetItem("(TODO) ${l10n.datePicker}").build(context),
            WidgetItem("(TODO) ${l10n.timePicker}").build(context),
          ],
        ),
      ),
    );
  }
}
