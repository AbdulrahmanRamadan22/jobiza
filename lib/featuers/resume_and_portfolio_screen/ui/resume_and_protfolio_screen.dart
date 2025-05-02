import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class ResumeAndProtfolioScreen extends StatelessWidget {
  const ResumeAndProtfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backGroundWhite,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Resume & Portfolio',
          style: TextStyles.font16Black,
        ),
        actions: [
          TextButton(
            child: Text(
              'Skip',
              style: TextStyles.font14MainBlue,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'جاري العمل علي هذه الصفحه. ',
                style: TextStyles.font24DarkBlack,
              ),
            )
          ],
        ),
      ),
    );
  }
}
