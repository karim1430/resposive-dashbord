import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widgets/all_expenses.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
      ),
    );
  }
}

class ViewMid extends StatelessWidget {
  const ViewMid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 20,
        ),
        QuickInvoice(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
