import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/featuers/drawer_profile/ui/drawer_profile.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/custom_scroll_view.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/search_and_filter.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/wellcom_and_name_and_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer profile
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // welcome and name and image
              WellcomAndNameAndImagePerson(),
              verticalSpace(10),
              // search and filter
              Searchandfilter(),
              verticalSpace(9),
              // custom scroll view (featured jobs , popular jobs and recomented jobs)
              Expanded(
                child: RefreshIndicator(
                  backgroundColor: ColorsApp.mainBlue,
                  color: ColorsApp.wihteColor,
                  onRefresh: () async {
                    // محاكاة عملية تحديث البيانات
                    await Future.delayed(Duration(seconds: 2));
                    // يمكنك هنا استدعاء دالة لتحديث البيانات
                    //.................... مستني   Apis
                  },
                  child: CustomScrollViewHomeScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
