import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashbord/models/all_expenses_item_model.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.allExpensesItemModel, this.iconColor});
  final AllExpensesItemModel allExpensesItemModel;

  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: SvgPicture.asset(
            allExpensesItemModel.image,
            color: Colors.white,
          ),
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.1), shape: const OvalBorder()),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.5707963267949 * 2,
            child: iconColor == null
                ? const Icon(Icons.arrow_back_ios_new)
                : Icon(Icons.arrow_back_ios_new, color: iconColor))
      ],
    );
  }
}
