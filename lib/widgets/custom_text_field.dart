import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyle.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
        border: inputBuilder(),
        enabledBorder: inputBuilder(),
      ),
    );
  }

  OutlineInputBorder inputBuilder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xffFAFAFA)));
  }
}
