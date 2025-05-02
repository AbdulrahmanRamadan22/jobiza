import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/core/widgets/row_divider_and_text.dart';
import 'package:jobes/featuers/auth/login_screen/logic/cubit/login_cubit.dart';
import 'package:jobes/featuers/auth/login_screen/ui/widgets/form_login.dart';
import 'package:jobes/featuers/auth/login_screen/ui/widgets/login_bloc_listner.dart';
import 'package:jobes/featuers/auth/login_screen/ui/widgets/login_with_social_media.dart';
import 'package:jobes/featuers/auth/login_screen/ui/widgets/row_have_account_and_register.dart';
import 'package:jobes/featuers/auth/login_screen/ui/widgets/text_welcom_login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
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
        ),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWelcomLoginSceen(),
              FormLogin(),
              AppTextButton(
                borderRadius: 5.r,
                buttonHeight: 55.h,
                buttonText: 'Login',
                textStyle: TextStyles.font18White,
                onPressed: () {
                  vaildateGoLoding(context);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Reset your password from here',
                    style: TextStyles.font14Gray,
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushNamed(Routes.forgotPasswordScreen);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font14MainBlue,
                    ),
                  ),
                ],
              ),
              RowDiverderAndText(),
              LoginWithSocialMedia(),
              RowHaveAcountAndButtonRegister(),
              const LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void vaildateGoLoding(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLogin();
    }
  }
}
