import 'package:flutter/material.dart';
import 'package:responsive_dashbord/models/transaction_model.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class TransactionItems extends StatelessWidget {
  const TransactionItems({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffFAFAFA),
          ),
          child: Center(
            child: ListTile(
              title: Text(
                transactionModel.title,
                style: AppStyle.styleSemiBold16,
              ),
              subtitle: Text(
                transactionModel.date,
                style: AppStyle.styleRegular16
                    .copyWith(color: const Color(0xffAAAAAA)),
              ),
              trailing: Text(
                transactionModel.amount,
                style: AppStyle.styleSemiBold20.copyWith(
                    color: transactionModel.isWithdrawal
                        ? Color(0xffF3735E)
                        : Color(0xff7DD97B)),
              ),
            ),
          )),
    );
  }
}
