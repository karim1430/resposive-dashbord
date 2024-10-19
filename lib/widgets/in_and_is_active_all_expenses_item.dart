import 'package:flutter/material.dart';
import 'package:responsive_dashbord/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord/widgets/all_expenses_item_details.dart';
import 'package:responsive_dashbord/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemss,
    this.backGroundColor,
  });

  final AllExpensesItemModel itemss;
  final Color? backGroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backGroundColor ?? const Color(0xffF1F1F1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AllExpensesItemHeader(
                iconColor: Colors.white,
                allExpensesItemModel: itemss,
              ),
              const SizedBox(height: 8),
              Text(
                itemss.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)
                        .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                itemss.date,
                style: const TextStyle(fontSize: 14)
                    .copyWith(color: Color(0xffFAFAFA).withOpacity(0.4)),
              ),
              const SizedBox(height: 16),
              Text(
                itemss.price,
                style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue)
                    .copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemss,
  });

  final AllExpensesItemModel itemss;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffF1F1F1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            allExpensesItemModel: itemss,
          ),
          const SizedBox(height: 8),
          Text(
            itemss.title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            itemss.date,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 16),
          Text(
            itemss.price,
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
