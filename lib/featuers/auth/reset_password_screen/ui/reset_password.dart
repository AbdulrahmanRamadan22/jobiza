import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/featuers/auth/reset_password_screen/logic/cubit/resetpassword_cubit.dart';
import 'package:jobes/featuers/auth/reset_password_screen/ui/widgets/reset_password_bloc_listner.dart';
import 'package:jobes/featuers/auth/reset_password_screen/ui/widgets/text_for_reset_password.dart';
import 'package:jobes/featuers/auth/reset_password_screen/ui/widgets/text_form_field_reset_pass.dart';

import '../../../../core/theming/styles.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0.w,
          vertical: 21.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextForResetPassword(),
              verticalSpace(80.h),
              TextFormFieldResetPass(),
              verticalSpace(150.h),
              AppTextButton(
                borderRadius: 5.r,
                buttonHeight: 56.h,
                buttonText: 'Reset Password',
                textStyle: TextStyles.font16White,
                onPressed: () {
                  validateThenDoResetPass(context);
                },
              ),
              ResetPasswordBlocListner(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoResetPass(BuildContext context) {
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().emitResetPassword();
    }
  }
}
