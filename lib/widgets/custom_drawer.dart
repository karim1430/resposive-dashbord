import 'package:flutter/material.dart';
import 'package:responsive_dashbord/models/list_tile_item_model.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/widgets/is_and_not_active_item.dart';
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
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoLisTile(
                image: Assets.imagesFrame,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com'),
          ),
          ListViewItem(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                NotActiveListTileItem(
                  item: ListTileItemModel(
                    image: Assets.imagesSetting,
                    title: 'Setting system',
                  ),
                ),
                NotActiveListTileItem(
                  item: ListTileItemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
