import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/featuers/onbording_screen/data/model/model_onbording.dart';
import 'package:jobes/featuers/onbording_screen/ui/widgets/button_next_and_skip.dart';
import 'package:jobes/featuers/onbording_screen/ui/widgets/onbording_page_view.dart';
import 'package:jobes/featuers/onbording_screen/ui/widgets/smooth_indicator_page.dart';

// ignore: must_be_immutable
class OnbordingScreen extends StatelessWidget {
  List<ModelOnbording> modelOnbording = [
    ModelOnbording(
        image: 'assets/images/onbording1.png',
        title: 'Browse jobs list',
        description:
            'Figure out your top five priorities whether it is company culture, salary.'),
    ModelOnbording(
        image: 'assets/images/onbording2.png',
        title: 'Apply to best jobs',
        description:
            'You can apply to your desirable jobs very quickly and easily with ease.'),
    ModelOnbording(
        image: 'assets/images/onbording3.png',
        title: 'Search your job',
        description:
            'Figure out your top five priorities whether it is company culture, salary.'),
  ];
  final controller = PageController();

  OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/circel.png',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),

          // PageView مع إضافة مسافة بين الصورة و PageView
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: controller,
                    itemCount: modelOnbording.length,
                    itemBuilder: (context, index) {
                      return OnBordingPageView(
                        model: modelOnbording[index],
                        pageController: controller,
                      );
                    },
                  ),
                ),
                // Indicator page
                SmothIndicatorPage(pageController: controller),
                verticalSpace(30.h), // Add spacing between elements
                // ButtonNextAndSkip ...
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.h),
                  child: ButtonNextAndSkip(pageController: controller),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
