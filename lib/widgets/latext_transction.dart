import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/latext_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMediam16,
        ),
        LatestTransctionListView()
      ],
    );
  }
}
