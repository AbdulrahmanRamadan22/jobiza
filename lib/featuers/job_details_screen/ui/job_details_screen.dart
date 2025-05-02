import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/featuers/job_details_screen/ui/widgets/stack_image_title_buttons.dart';
import 'package:jobes/featuers/job_details_screen/ui/widgets/tab_bar_view.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // الجزء الاعلي من الصفحه ال container blue
            StackImageTitleButtons(),
            verticalSpace(36),
            // tab bar
            TabBar(
              mouseCursor: SystemMouseCursors.click,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              physics: const BouncingScrollPhysics(),
              // بتجعل العناصر متنقله
              isScrollable: true,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorsApp.black,
              labelStyle: TextStyles.font14Black,
              labelPadding: EdgeInsets.only(right: 28.w),
              unselectedLabelColor: ColorsApp.lightBlueGray,
              tabs: [
                Tab(
                  child: Text(
                    'Description',
                  ),
                ),
                Tab(
                  child: Text(
                    'Requirement',
                  ),
                ),
                Tab(
                  child: Text('About'),
                ),
                Tab(
                  child: Text('Reviews'),
                ),
              ],
            ),
            // tab bar view design
            TabBarViewDesign(),
            verticalSpace(8),

            AppTextButton(
              borderRadius: 5.r,
              buttonWidth: 327.w,
              buttonHeight: 56.h,
              buttonText: 'Apply Now',
              textStyle: TextStyles.font16White,
              onPressed: () {
                context.pushNamed(Routes.applyScreen);
              },
            ),
            verticalSpace(8)
          ],
        ),
      ),
    );
  }
}
