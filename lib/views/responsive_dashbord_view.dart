import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widgets/adaptive_layout.dart';
import 'package:responsive_dashbord/widgets/layout_desktop.dart';
import 'package:responsive_dashbord/widgets/responsive_font_size.dart';

class ResponsiveDashbordView extends StatelessWidget {
  const ResponsiveDashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: AdaptiveLayout(
          layoutMobile: (context) => SizedBox(),
          layoutTablet: (context) => SizedBox(),
          layoutDesktop: (context) => LayoutDesktop()),
    );
  }
}
