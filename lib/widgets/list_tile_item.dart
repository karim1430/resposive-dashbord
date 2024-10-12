import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashbord/models/list_tile_item_model.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.itme, required this.active});
  final ListTileItemModel itme;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itme.image),
      title: Text(
        itme.title,
        style: AppStyle.styleRegular16,
      ),
    );
  }
}
