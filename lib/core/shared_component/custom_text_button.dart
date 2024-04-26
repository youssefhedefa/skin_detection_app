import 'package:flutter/material.dart';


class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({super.key, this.onTap, required this.text, required this.textStyle, required this.color, this.verticalPadding = 20});

  final void Function()? onTap;
  final String text;
  final TextStyle textStyle;
  final Color color;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: verticalPadding!),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
