import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class SliverListIndividualMessages extends StatelessWidget {
  const SliverListIndividualMessages({
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
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 10.w,
              ),
              title: Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                'Abo Tarek',
                style: TextStyles.font14Black,
              ),
              subtitle: Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                'Message marked as read.',
                style: TextStyles.font14Gray,
              ),
              trailing: Column(
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    '1:45 PM',
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
                  'assets/images/photo_persone.png',
                  fit: BoxFit.cover,
                  height: 40.h,
                ),
              ),
            ),
          );
        },
        childCount: 5, // عدد الرسائل المقروءة
      ),
    );
  }
}
