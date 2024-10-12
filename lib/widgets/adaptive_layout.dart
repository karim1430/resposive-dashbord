import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.layoutMobile,
    required this.layoutTablet,
    required this.layoutDesktop,
  });
  final WidgetBuilder layoutMobile, layoutTablet, layoutDesktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 500) {
        return layoutMobile(context);
      } else if (Constraints.maxWidth < 900) {
        return layoutTablet(context);
      } else {
        return layoutDesktop(context);
      }
    });
  }
}
