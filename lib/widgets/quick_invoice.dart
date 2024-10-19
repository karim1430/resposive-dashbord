import 'package:flutter/material.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

import 'package:responsive_dashbord/widgets/custom_Background_container.dart';
import 'package:responsive_dashbord/widgets/custom_buttom.dart';
import 'package:responsive_dashbord/widgets/latext_transction.dart';
import 'package:responsive_dashbord/widgets/quick_invoice_form.dart';
import 'package:responsive_dashbord/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 24,
            color: Color(0xffF1F1F1),
          ),
          Row(
            children: [
              Expanded(
                  child: QuickInvoiceForm(
                      hint: 'Customer name', text: 'Type customer name')),
              SizedBox(
                width: 12,
              ),
              Expanded(
                  child: QuickInvoiceForm(
                      hint: 'Customer Email', text: 'Type customer email')),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: QuickInvoiceForm(
                      hint: 'Item name', text: 'Type customer name')),
              SizedBox(
                width: 12,
              ),
              Expanded(
                  child: QuickInvoiceForm(hint: 'Item mount', text: 'USD')),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  text: 'Add more details',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: CustomButton(
                  text: 'Send Money',
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
