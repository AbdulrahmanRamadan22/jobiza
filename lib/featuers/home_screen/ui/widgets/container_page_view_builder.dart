import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/three_buttons_in_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliverListContainerPageView extends StatelessWidget {
  SliverListContainerPageView({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 183.h, // حجم PageView
                child: PageView.builder(
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 2.5),
                      child: GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.jobDetailsScreen);
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorsApp.darkBlue,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 0,
                                color: ColorsApp.darkBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: ListTile(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 8.h),
                                  title: Text(
                                    'Product Manager',
                                    style: TextStyles.font16White,
                                  ),
                                  subtitle: Text(
                                    'Google',
                                    style: TextStyles.font14Gray,
                                  ),
                                  leading: Container(
                                    height: 50.h,
                                    width: 50.w,
                                    decoration: BoxDecoration(
                                      color: ColorsApp.backGroundWhite,
                                      borderRadius: BorderRadius.circular(16.r),
                                    ),
                                    child: Image.asset(
                                      'assets/images/flat-color-icons_google.png',
                                    ),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.bookmark_add,
                                      color: ColorsApp.lightGray,
                                    ),
                                  ),
                                ),
                              ),
                              // Buttons
                              ThreeButtonsInPageView(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0.w, vertical: 8.0.h),
                                child: Row(
                                  children: [
                                    Text('\$160,00/Month',
                                        style: TextStyles.font13White),
                                    Spacer(),
                                    Text(
                                      'California , USA',
                                      style: TextStyles.font13White,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              verticalSpace(8),
              // SmoothPageIndicator
              SmoothPageIndicator(
                controller: _pageController,
                count: 4, // عدد الصفحات
                effect: const ExpandingDotsEffect(
                  dotWidth: 8, // تصغير حجم النقاط
                  dotHeight: 8,
                  dotColor: ColorsApp.lightGray,
                  activeDotColor: ColorsApp.mainBlue,
                ),
              ),
            ],
          );
        },
        childCount: 1, // عدد العناصر في SliverList
      ),
    );
  }
}
