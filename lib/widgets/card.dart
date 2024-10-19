import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashbord/constant.dart';
import 'package:responsive_dashbord/views/utils/app_images.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'name card',
                style: AppStyle.styleRegular16.copyWith(
                    color: const Color(0xffFFFFFF).withOpacity(0.7),
                    fontSize: 12),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyle.styleMediam20
                    .copyWith(color: Colors.white, fontSize: 16),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.styleSemiBold24
                        .copyWith(color: const Color(0xffFFFFFF), fontSize: 16),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyle.styleRegular16.copyWith(
                        color: const Color(0xffFFFFFF).withOpacity(0.7),
                        fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
