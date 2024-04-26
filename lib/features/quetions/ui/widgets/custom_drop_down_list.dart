import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_detection/core/theming/app_font_styles.dart';
import 'package:skin_detection/core/theming/color_manager.dart';

class EditDropDownItem extends StatefulWidget {
  const EditDropDownItem({super.key, required this.label, this.width, required this.hintText, this.controller, this.haveValue = true, required this.menuItems, this.onSelected});

  final String label;
  final double? width;
  final String hintText;
  final TextEditingController? controller;
  final bool? haveValue;
  final List menuItems;
  final void Function(int?)? onSelected;

  @override
  State<EditDropDownItem> createState() => _EditDropDownItemState();
}

class _EditDropDownItemState extends State<EditDropDownItem> {
  int selectedValue = -1;

  OutlineInputBorder defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColorManager.lightPrimaryColor,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  OutlineInputBorder focusedBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColorManager.lightPrimaryColor,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  OutlineInputBorder errorBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColorManager.lightPrimaryColor,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          width: MediaQuery.sizeOf(context).width - 32,
          child: DropdownMenu(
            menuHeight: 250,
            controller: widget.controller,
            onSelected: widget.onSelected,
            hintText: widget.hintText,
            textStyle: AppTextStylesManager.fontMedium18Black,
            width: MediaQuery.sizeOf(context).width - 80.w,
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: AppTextStylesManager.fontMedium18Black,
              filled: true,
              fillColor: AppColorManager.lightPrimaryColor,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 11,
              ),
              border: widget.haveValue! ? defaultBorder : errorBorder,
              errorBorder:  errorBorder,
              enabledBorder: widget.haveValue! ? defaultBorder : errorBorder,
              focusedBorder: focusedBorder,
            ),
            dropdownMenuEntries: dropDownItemMaker(items: widget.menuItems),
          ),
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
  List<DropdownMenuEntry<int>> dropDownItemMaker({required List items}){
    List<DropdownMenuEntry<int>> dropDownItems = [];

    for(int i = 0 ; i < items.length ; i++){
      dropDownItems.add(DropdownMenuEntry(
        value: i,
        label: items[i],
        labelWidget: Text(
          items[i].toString(),
          style: AppTextStylesManager.fontMedium18Black,
        ),

      ));
    }

    return dropDownItems;
  }
}