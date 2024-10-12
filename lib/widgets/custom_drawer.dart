import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/widgets/list_view_item.dart';
import 'package:responsive_dashbord/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoLisTile(
              image: Assets.imagesFrame,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com'),
          ListViewItem(),
        ],
      ),
    );
  }
}
