import 'dart:async';
import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';
import 'package:responsive_dashbord/widgets/dots_indicator_page.dart';
import 'package:responsive_dashbord/widgets/my_card_page_view.dart';

class SectionMyCard extends StatefulWidget {
  const SectionMyCard({super.key});

  @override
  State<SectionMyCard> createState() => _SectionMyCardState();
}

class _SectionMyCardState extends State<SectionMyCard> {
  int currentIndex = 0;
  late PageController pageController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });

    // Initialize the timer to change the page every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (currentIndex < 2) {
        // Assuming there are 3 pages (index 0, 1, 2)
        currentIndex++;
      } else {
        currentIndex = 0; // Go back to the first page
      }

      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style:
              AppStyle.styleSemiBold18.copyWith(color: const Color(0xff064061)),
        ),
        const SizedBox(
          height: 10,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 15,
        ),
        DotsIndicatorPage(
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
