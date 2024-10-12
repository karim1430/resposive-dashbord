import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/models/list_tile_item_model.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class IsActiveListTileItem extends StatelessWidget {
  const IsActiveListTileItem({
    super.key,
    required this.item,
  });

  final ListTileItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyle.styleBold16.copyWith(color: kPrimaryColor),
      ),
      trailing: Container(
        width: 5,
        color: kPrimaryColor,
      ),
    );
  }
}

class NotActiveListTileItem extends StatelessWidget {
  const NotActiveListTileItem({
    super.key,
    required this.item,
  });

  final ListTileItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyle.styleRegular16,
      ),
    );
  }
}
