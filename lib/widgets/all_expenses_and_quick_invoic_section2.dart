import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widgets/all_expenses.dart';
import 'package:responsive_dashbord/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection2 extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
