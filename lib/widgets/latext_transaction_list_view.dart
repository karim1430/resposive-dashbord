import 'package:flutter/material.dart';
import 'package:responsive_dashbord/models/user_info_item.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const items = [
    UserInfoItemModel(
        image: Assets.imagesAvatar1,
        titel: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoItemModel(
        image: Assets.imagesAvatar2,
        titel: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoItemModel(
        image: Assets.imagesAvatar1,
        titel: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserInfoLisTile(userInfoItem: e)))
            .toList(),
      ),
    );

    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoLisTile(
    //             userInfoItem: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
