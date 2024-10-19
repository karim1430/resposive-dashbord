import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashbord/models/user_info_item.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class UserInfoLisTile extends StatelessWidget {
  const UserInfoLisTile({
    super.key,
    required this.userInfoItem,
  });
  final UserInfoItemModel userInfoItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      // color:const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoItem.image),
        title: Text(
          userInfoItem.titel,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoItem.subTitle,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
