import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/all_expenses.dart';
import 'package:responsive_dashbord/widgets/all_expenses_and_quick_invoic_section2.dart';

import 'package:responsive_dashbord/widgets/custom_drawer.dart';
import 'package:responsive_dashbord/widgets/dots_indecator.dart';
import 'package:responsive_dashbord/widgets/my_card_and_transaction_history.dart';
import 'package:responsive_dashbord/widgets/my_card_page_view.dart';
import 'package:responsive_dashbord/widgets/quick_invoice.dart';
import 'package:responsive_dashbord/widgets/section_my_Card.dart';
import 'package:responsive_dashbord/widgets/transaction_history_list_view.dart';

class LayoutDesktop extends StatelessWidget {
  const LayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection2(),
        ),
        SizedBox(
          width: 16,
        ),
        // Expanded(child: MyCardPageView())
        Expanded(child: MyCardAndTransactionHistory())
      ],
    );
  }
}
