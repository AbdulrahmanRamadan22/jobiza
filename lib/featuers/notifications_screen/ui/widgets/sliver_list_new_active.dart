import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class SliverListNewActive extends StatelessWidget {
  const SliverListNewActive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            elevation: 0,
            color: ColorsApp.backGroundWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorsApp.backGroundWhite,
                radius: 25.r,
                child: Image.asset(
                  'assets/images/image_company.png',
                ),
              ),
              title: Text(
                'Fiverr want to take a final interview\nof you where head of HR will see you!',
                style: TextStyles.font12Black,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 8.h,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Text(
                      '${index + 1}  min ago',
                      style: TextStyles.font12Black,
                    ),
                    horizontalSpace(6),
                    Icon(
                      Icons.circle,
                      color: ColorsApp.mainBlue,
                      size: 10.r,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        childCount: 2,
      ),
    );
  }
}
