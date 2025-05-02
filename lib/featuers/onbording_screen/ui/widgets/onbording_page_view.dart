import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/featuers/onbording_screen/data/model/model_onbording.dart';
import 'package:jobes/featuers/onbording_screen/ui/widgets/smooth_indicator_page.dart';
import 'package:jobes/featuers/onbording_screen/ui/widgets/title_and_subtext.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({
    super.key,
    required this.model,
    required this.pageController,
  });

  final PageController pageController;
  final ModelOnbording model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0.w, vertical: 65.h),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              model.image,
              width: double.infinity,
            ),
          ),
          TextAndSubText(model: model),
        ],
      ),
    );
  }
}
