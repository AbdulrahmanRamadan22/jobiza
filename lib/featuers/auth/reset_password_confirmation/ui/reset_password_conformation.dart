import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/featuers/auth/reset_password_confirmation/ui/widgets/image_reset_pass.dart';

class ResetPasswordConformation extends StatelessWidget {
  const ResetPasswordConformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        scrolledUnderElevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 21.0,
          ),
          child: Column(
            children: [
              Text(
                'Jôbizz',
                style: TextStyles.font22MainBlue,
              ),
              verticalSpace(65),
              ImageResetPassword(),
              verticalSpace(25),
              Text(
                'Confirmation',
                textAlign: TextAlign.center,
                style: TextStyles.font22BlackBold,
              ),
              verticalSpace(17),
              Text(
                  'Your password has been changed. Please log in with your new password.',
                  textAlign: TextAlign.center,
                  style: TextStyles.font14Gray),
              verticalSpace(250),
              AppTextButton(
                borderRadius: 5.r,
                buttonHeight: 62.h,
                buttonText: 'Log in',
                textStyle: TextStyles.font16White,
                onPressed: () {
                  context.pushNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
