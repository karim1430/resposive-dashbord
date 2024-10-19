import 'package:flutter/material.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20,
        ),
        Spacer(),
        CircleAvatar(
          child: Icon(
            Icons.add,
            color: kPrimaryColor,
          ),
          backgroundColor: Colors.grey,
        )
      ],
    );
  }
}
