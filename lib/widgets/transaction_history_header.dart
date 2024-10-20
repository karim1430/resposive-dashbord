import 'package:flutter/material.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction history',
          style: AppStyle.styleSemiBold16.copyWith(color: Color(0xff064061)),
        ),
        Text(
          'See All...',
          style: AppStyle.styleMediam16.copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
