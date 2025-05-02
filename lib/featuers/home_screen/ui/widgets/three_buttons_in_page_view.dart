import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
// this is the button in the page view of the home screen.

class ThreeButtonsInPageView extends StatelessWidget {
  const ThreeButtonsInPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 8,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w, vertical: 7.h), // مسافة داخلية
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: ColorsApp.lightBlueGray.withOpacity(0.2),
              ),
              child: Text(
                "Administration",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w, vertical: 7.h), // مسافة داخلية
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: ColorsApp.lightBlueGray.withOpacity(0.2),
              ),
              child: Text(
                "Full-Time",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w, vertical: 7.h), // مسافة داخلية
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: ColorsApp.lightBlueGray.withOpacity(0.2),
              ),
              child: Text(
                "junior",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
