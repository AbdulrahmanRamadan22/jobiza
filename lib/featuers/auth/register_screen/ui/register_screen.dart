import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/core/widgets/row_divider_and_text.dart';
import 'package:jobes/featuers/auth/register_screen/logic/cubit/sign_up_cubit.dart';
import 'package:jobes/featuers/auth/register_screen/ui/widgets/form_register.dart';
import 'package:jobes/featuers/auth/register_screen/ui/widgets/row_have_account_and_login.dart';
import 'package:jobes/featuers/auth/register_screen/ui/widgets/register_with_social_media.dart';
import 'package:jobes/featuers/auth/register_screen/ui/widgets/sign_up_bloc_lisiner.dart';
import 'package:jobes/featuers/auth/register_screen/ui/widgets/text_welcom_register_scren.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0.w,
            vertical: 21.0.h,
          ),
          child: Column(
            spacing: 30.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // text welcom register..
              TextWelcomRegisterSceen(),
              // form register (name , email , password , confirm password)..
              FormRegister(),
              // button register..
              AppTextButton(
                borderRadius: 5.r,
                buttonHeight: 55.h,
                buttonText: 'Register',
                textStyle: TextStyles.font16White,
                onPressed: () {
                  validateThenDoSignup(context);
                },
              ),
              // BlocListener
              SignUpBlocLisiner(),
              // row divider and text
              RowDiverderAndText(),
              // row register social another..
              RegisterWithSocialMedia(),
              // row have account and button login
              RowHaveAcountAndButtonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUp();
    }
  }
}
