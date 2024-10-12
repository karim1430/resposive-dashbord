import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class UserInfoLisTile extends StatelessWidget {
  const UserInfoLisTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // color:const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
