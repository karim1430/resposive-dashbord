import 'package:flutter/material.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/models/all_expenses_item_model.dart';

import 'package:responsive_dashbord/widgets/in_and_is_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemss, required this.selected});
  final AllExpensesItemModel itemss;
  final bool selected;
  // final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return selected
        ? InActiveAllExpensesItem(
            backGroundColor: kPrimaryColor,
            itemss: itemss,
          )
        : ActiveAllExpensesItem(
            itemss: itemss,
          );
  }
}
