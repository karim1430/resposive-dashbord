import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/header_all_expenses.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          HeaderAllExpenses(),
        ],
      ),
    );
  }
}
