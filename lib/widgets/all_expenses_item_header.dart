import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: SvgPicture.asset(Assets.imagesIncome),
          height: 50,
          width: 50,
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(color: Colors.white, shape: OvalBorder()),
        ),
        Spacer(),
        Transform.rotate(
            angle: -1.5707963267949 * 2,
            child: const Icon(Icons.arrow_back_ios_new))
      ],
    );
  }
}
