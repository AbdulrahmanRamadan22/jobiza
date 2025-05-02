import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class SliverListCompanys extends StatelessWidget {
  const SliverListCompanys({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            elevation: 0,
            color: ColorsApp.wihteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 10.w,
              ),
              title: Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                'Google',
                style: TextStyles.font14Black,
              ),
              subtitle: Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                'Are you available for an interview?',
                style: TextStyles.font14Gray,
              ),
              trailing: Column(
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    '11:45 PM',
                    style: TextStyles.font11Black,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 22.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: ColorsApp.lightBlue,
                    ),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      '4',
                      style: TextStyles.font13White,
                    ),
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundColor: ColorsApp.wihteColor,
                child: Image.asset(
                  'assets/images/Google.png',
                  fit: BoxFit.cover,
                  height: 40.h,
                ),
              ),
            ),
          );
        },
        childCount: 5, // عدد الرسائل غير المقروءة
      ),
    );
  }
}
