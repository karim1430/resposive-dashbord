import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/range_option.dart';

class HeaderAllExpenses extends StatelessWidget {
  const HeaderAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Text(
            'All Expenses',
            style: AppStyle.styleSemiBold20,
          ),
          Expanded(child: SizedBox()),
          RangeOption()
        ],
      ),
    );
  }
}
