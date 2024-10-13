import 'package:flutter/material.dart';
import 'package:responsive_dashbord/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord/widgets/all_expenses_item_details.dart';
import 'package:responsive_dashbord/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffF1F1F1)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: '',
          ),
          AllExpensesItemDetails(
            detailsItem: AllExpensesItemModel(
                title: 'Income',
                date: 'April 2022',
                price: '\$20,129',
                image: ''),
          )
        ],
      ),
    );
  }
}
