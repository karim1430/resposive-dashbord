import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashbord/models/list_tile_item_model.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/widgets/list_tile_item.dart';

class ListViewItem extends StatefulWidget {
  const ListViewItem({super.key});

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  final List<ListTileItemModel> items = const [
    ListTileItemModel(image: Assets.imagesDashboard, title: 'DashBord'),
    ListTileItemModel(image: Assets.imagesTransaction, title: 'My Transaction'),
    ListTileItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    ListTileItemModel(
        image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    ListTileItemModel(image: Assets.imagesInvestments, title: 'My Investments'),
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentindex = index;
                log(currentindex.toString());
              });
            },
            child: ListTileItem(
              itme: items[index],
              isActive: currentindex == index,
            ),
          );
        });
  }
}
