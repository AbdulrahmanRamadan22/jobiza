import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';

class RegisterWithSocialMedia extends StatelessWidget {
  const RegisterWithSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Container(
        //   height: 60.h,
        //   decoration: BoxDecoration(
        //     color: ColorsApp.wihteColor,
        //     borderRadius: BorderRadius.circular(50.r),
        //   ),
        //   child: Image.asset(
        //     'assets/images/image_apple.png',
        //   ),
        // ),
        Container(
          height: 60.h,
          decoration: BoxDecoration(
            color: ColorsApp.wihteColor,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Image.asset(
            'assets/images/flat-color-icons_google.png',
          ),
        ),
        // Container(
        //   height: 60.h,
        //   decoration: BoxDecoration(
        //     color: ColorsApp.wihteColor,
        //     borderRadius: BorderRadius.circular(50.r),
        //   ),
        //   child: Image.asset(
        //     'assets/images/image-facebook.png',
        //   ),
        // ),
      ],
    );
  }
}
