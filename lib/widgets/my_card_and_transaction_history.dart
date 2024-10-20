import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widgets/card.dart';
import 'package:responsive_dashbord/widgets/custom_Background_container.dart';
import 'package:responsive_dashbord/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          MyCard(),
          Divider(
            height: 30,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    ));
  }
}
