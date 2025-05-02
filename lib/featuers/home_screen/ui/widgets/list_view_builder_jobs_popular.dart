import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class SliverListPopularJobsListView extends StatelessWidget {
  const SliverListPopularJobsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 1,
        (context, index) {
          return ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.jobDetailsScreen);
                },
                child: Card(
                  elevation: 0,
                  color: ColorsApp.wihteColor,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: ColorsApp.lightGray),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 11.w,
                    ),
                    title: Text(
                      'Jr Executive',
                      style: TextStyles.font12Black,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    subtitle: Text(
                      'Burger King',
                      style: TextStyles.font12Gray,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          r'$96,000/y',
                          style: TextStyles.font12Black,
                        ),
                        Text(
                          'Los Angeles, US',
                          style: TextStyles.font12Gray,
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundColor: ColorsApp.backGroundWhite,
                      radius: 28.r,
                      child: Image.asset(
                        'assets/images/image_jobs.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
