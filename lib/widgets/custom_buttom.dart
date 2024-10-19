import 'package:flutter/material.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.textColor, this.backgroundColor});
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor ?? kPrimaryColor,
      ),
      child: Center(
          child: Text(
        text,
        style: AppStyle.styleSemiBold18.copyWith(color: textColor),
      )),
    );
  }
}
