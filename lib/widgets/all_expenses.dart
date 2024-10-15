import 'package:flutter/material.dart';

import 'package:responsive_dashbord/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dashbord/widgets/custom_Background_container.dart';
import 'package:responsive_dashbord/widgets/header_all_expenses.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          HeaderAllExpenses(),
          AllExpensesItemListView(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
