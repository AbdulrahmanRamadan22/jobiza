import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/three_buttons_in_page_view.dart';
import 'package:jobes/featuers/job_details_screen/ui/widgets/container_back_ground.dart';
import 'package:jobes/featuers/job_details_screen/ui/widgets/positiond_image.dart';
import 'package:jobes/featuers/job_details_screen/ui/widgets/row_icons.dart';

class StackImageTitleButtons extends StatelessWidget {
  const StackImageTitleButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background container
        ContainerBackGround(),
        // Image background
        PositionedImage(),
        Positioned(
          top: 60.h,
          // سبب اللي مخليهم جانب بعض
          left: 15.w,
          right: 15.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RowIcons(),
              CircleAvatar(
                backgroundColor: ColorsApp.backGroundWhite,
                radius: 45.r,
                child: Image.asset(
                  'assets/images/Google.png',
                  height: 55.h,
                ),
              ),
              verticalSpace(10),
              Text('Software Engineer', style: TextStyles.font20WhiteBold),
              Text('Google', style: TextStyles.font14Gray),
              verticalSpace(15),
              ThreeButtonsInPageView(),
              verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(r'$180,00/year', style: TextStyles.font16White),
                  Text('Seattle, USA', style: TextStyles.font16White),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
