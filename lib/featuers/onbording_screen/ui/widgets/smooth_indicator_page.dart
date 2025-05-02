import 'package:flutter/material.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmothIndicatorPage extends StatelessWidget {
  const SmothIndicatorPage({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: const WormEffect(
        dotColor: ColorsApp.lightBlueGray,
        activeDotColor: ColorsApp.darkBlue,
        dotHeight: 8,
        dotWidth: 25,
      ),
    );
  }
}
