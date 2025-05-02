import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class SliverGridCategoryTrending extends StatelessWidget {
  const SliverGridCategoryTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.2,
        crossAxisCount: 2, // عدد الأعمدة
        crossAxisSpacing: 15, // المسافة بين الأعمدة
        mainAxisSpacing: 10, // المسافة بين الصفوف
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: 4, // عدد العناصر
        (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed(Routes.campaniesScreen);
            },
            child: Container(
              decoration: BoxDecoration(
                color: ColorsApp.wihteColor,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: ColorsApp.lightGray,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorsApp.wihteColor,
                      radius: 28.r,
                      child: Image.asset(
                        'assets/images/image-facebook.png',
                        height: 45.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Sr Engineer', style: TextStyles.font14Black),
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
