import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/row_text_and_see_all.dart';
import 'package:jobes/featuers/auth/profile_screen/ui/widgets/image_and_named_and_job.dart';
import 'package:jobes/featuers/auth/profile_screen/ui/widgets/sliver_grid_portfolio.dart';
import 'package:jobes/featuers/auth/profile_screen/ui/widgets/sliver_list_education.dart';
import 'package:jobes/featuers/auth/profile_screen/ui/widgets/sliver_list_experience.dart';
import 'package:jobes/featuers/auth/profile_screen/ui/widgets/sliver_list_resume.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyles.font14Gray,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ImageAndNamedAndJob(),
            ),
            // قسم الخبرات
            SliverToBoxAdapter(
              child: RowTextAndSeeAll(
                text: 'Experience',
                onPressed: () {},
                seeAllTextStyle: TextStyles.font12Gray,
                textStyle: TextStyles.font14Black,
                seeAllText: 'See all',
              ),
            ),
            SliverListExperince(),
            // قسم التعليم
            SliverToBoxAdapter(
              child: RowTextAndSeeAll(
                text: 'Education',
                onPressed: () {},
                seeAllTextStyle: TextStyles.font12Gray,
                textStyle: TextStyles.font14Black,
                seeAllText: 'See all',
              ),
            ),
            SliverListEducation(),
            // قسم السيرة الذاتية
            SliverToBoxAdapter(
              child: RowTextAndSeeAll(
                text: 'Resume',
                onPressed: () {
                  context.pushNamed(Routes.resumeAndProtfolioScreen);
                },
                seeAllTextStyle: TextStyles.font14MainBlue,
                textStyle: TextStyles.font14Black,
                seeAllText: 'Make a resume',
              ),
            ),
            SliverListResume(),
            // قسم portfolio
            SliverToBoxAdapter(
              child: RowTextAndSeeAll(
                text: 'Portfolio',
                onPressed: () {},
                seeAllTextStyle: TextStyles.font12Gray,
                textStyle: TextStyles.font14Black,
                seeAllText: 'See all',
              ),
            ),
            SliverGridPortolio(),
          ],
        ),
      ),
    );
  }
}
