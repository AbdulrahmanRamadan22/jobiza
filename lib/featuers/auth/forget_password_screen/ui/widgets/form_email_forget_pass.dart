import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/form_field_app_text.dart';
import 'package:jobes/featuers/auth/forget_password_screen/logic/cubit/forget_pass_cubit.dart';

class FormEmailForgetPass extends StatefulWidget {
  const FormEmailForgetPass({
    super.key,
  });

  @override
  State<FormEmailForgetPass> createState() => _FormEmailForgetPassState();
}

class _FormEmailForgetPassState extends State<FormEmailForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetPassCubit>().formKey,
      child: AppTextFormField(
        controller: context.read<ForgetPassCubit>().emailController,
        hintText: 'E-mail',
        hintStyle: TextStyles.font14Gray,
        keyboardType: TextInputType.emailAddress,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        prefixIcon: Icon(
          Icons.email_outlined,
          color: ColorsApp.gray,
          size: 25.sp,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
        },
      ),
    );
  }
}
