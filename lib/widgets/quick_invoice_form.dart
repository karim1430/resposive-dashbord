import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key, required this.hint, required this.text});
  final String hint, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: AppStyle.styleMediam16,
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint)
      ],
    );
  }
}
