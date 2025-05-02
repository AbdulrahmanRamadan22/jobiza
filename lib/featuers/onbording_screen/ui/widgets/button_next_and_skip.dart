import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';

class ButtonNextAndSkip extends StatelessWidget {
  const ButtonNextAndSkip({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text('Skip', style: TextStyles.font14Gray),
        ),
        Spacer(),
        AppTextButton(
          borderRadius: 5.r,
          buttonWidth: 158.w,
          buttonHeight: 55.h,
          buttonText: 'Next',
          textStyle: TextStyles.font16White,
          onPressed: () {
            if (pageController.page! < 2) {
              pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear,
              );
            } else {
              context.pushReplacementNamed(Routes.loginScreen);
            }
          },
        ),
      ],
    );
  }
}
