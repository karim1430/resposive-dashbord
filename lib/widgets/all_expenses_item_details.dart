import 'package:flutter/material.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class AllExpensesItemDetails extends StatelessWidget {
  const AllExpensesItemDetails({super.key, required this.detailsItem});
  final AllExpensesItemModel detailsItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          detailsItem.title,
          style: AppStyle.styleSemiBold16,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          detailsItem.date,
          style: AppStyle.styleRegular14,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          detailsItem.price,
          style: AppStyle.styleSemiBold24.copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
