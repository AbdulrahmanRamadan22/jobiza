import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';

class ListViewBuilderCard extends StatelessWidget {
  const ListViewBuilderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          // padding اللي في الكارد
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Card(
              elevation: 0,
              color: ColorsApp.mistyGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: ColorsApp.backGroundWhite,
                        radius: 30.r,
                        child: Image.asset('assets/images/Google.png'),
                      ),
                      title: Text(
                        'UX Designer',
                        style: TextStyles.font14Black,
                      ),
                      subtitle: Text(
                        'Google',
                        style: TextStyles.font14Gray,
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            r'$88,000/y',
                            style: TextStyles.font12Black,
                          ),
                          verticalSpace(4),
                          Text(
                            'Los Angeles, US',
                            style: TextStyles.font14Gray,
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            color: ColorsApp.mainBlue.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          child: Center(
                            child: Text(
                              'Applied',
                              style: TextStyles.font14MainBlue,
                            ),
                          ),
                        ),
                        Text(
                          'Part-time',
                          style: TextStyles.font14Gray,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
