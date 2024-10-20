import 'package:flutter/material.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/transaction_history_header.dart';
import 'package:responsive_dashbord/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 15,
        ),
        Text(
          '13 April 2022',
          style:
              AppStyle.styleMediam16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
