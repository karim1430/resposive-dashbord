import 'package:flutter/material.dart';
import 'package:responsive_dashbord/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance, // Replace with actual image path
        title: 'Balance',
        date: 'April 2022',
        price: '\$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome, // Replace with actual image path
        title: 'Income',
        date: 'April 2022',
        price: '\$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses, // Replace with actual image path
        title: 'Expenses',
        date: 'April 2022',
        price: '\$20,129'),
  ];

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // Add spacing between items
      children: AllExpensesItemListView.items.asMap().entries.map((e) {
        var item = e.value;
        int index = e.key;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                indexSelected = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: AllExpensesItem(
                itemss: item,
                selected: indexSelected == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  // void Update(int index) {
  //   setState(() {
  //     indexSelected = index;
  //   });
  // }
}
