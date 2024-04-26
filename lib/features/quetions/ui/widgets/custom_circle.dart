import 'package:flutter/material.dart';
import 'package:skin_detection/core/theming/color_manager.dart';


class CustomCircle extends StatelessWidget {
  const CustomCircle({super.key, required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      foregroundColor: Colors.white,
      backgroundColor: AppColorManager.lightPrimaryColor,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.white,
        child: selected ? const CircleAvatar(
          radius: 12,
          backgroundColor: AppColorManager.primaryColor,
        ) : null,
      ),
    );
  }
}
