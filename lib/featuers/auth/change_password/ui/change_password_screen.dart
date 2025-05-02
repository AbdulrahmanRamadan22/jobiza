import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/featuers/auth/change_password/ui/widgets/form_change_password.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create a new password', style: TextStyles.font24DarkBlack),
            verticalSpace(15),
            Text(
                'Your new password must be different from previous used password',
                style: TextStyles.font14Gray),
            verticalSpace(20),
            FormChangePassword(),
          ],
        ),
      ),
    );
  }
}
