import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/core/widgets/form_field_app_text.dart';

class FormChangePassword extends StatelessWidget {
  const FormChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('New password', style: TextStyles.font14Gray),
        verticalSpace(10),
        AppTextFormField(
          keyboardType: TextInputType.visiblePassword,
          hintText: 'New Password',
          hintStyle: TextStyles.font14Gray,
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: ColorsApp.gray,
            size: 20.sp,
          ),
          validator: (value) {},
        ),
        verticalSpace(20),
        Text('Confirm password', style: TextStyles.font14Gray),
        verticalSpace(10),
        AppTextFormField(
          keyboardType: TextInputType.visiblePassword,
          hintText: 'Confirm Password',
          hintStyle: TextStyles.font14Gray,
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: ColorsApp.gray,
            size: 20.sp,
          ),
          validator: (value) {},
        ),
        verticalSpace(30),
        AppTextButton(
          buttonHeight: 56.h,
          borderRadius: 5.r,
          buttonText: 'Login',
          textStyle: TextStyles.font16White,
          onPressed: () {},
        )
      ],
    );
  }
}
