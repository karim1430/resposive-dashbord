import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/models/list_tile_item_model.dart';

import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/is_and_not_active_item.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.itme, required this.isActive});
  final ListTileItemModel itme;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? IsActiveListTileItem(item: itme)
        : NotActiveListTileItem(item: itme);
  }
}
