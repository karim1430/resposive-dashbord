import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widgets/dots_indecator.dart';

class DotsIndicatorPage extends StatelessWidget {
  const DotsIndicatorPage({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: DotsIndecator(isActive: index == currentIndex),
              )),
    );
  }
}
