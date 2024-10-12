import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/range_option.dart';

class HeaderAllExpenses extends StatelessWidget {
  const HeaderAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Text(
            'All Expenses',
            style: AppStyle.styleSemiBold20,
          ),
          const Expanded(child: SizedBox()),
          RangeOption()
        ],
      ),
    );
  }
}
