import 'package:flutter/material.dart';

import 'package:responsive_dashbord/widgets/custom_drawer.dart';

class LayoutDesktop extends StatelessWidget {
  const LayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
