import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/widgets/showdialog_errors.dart';
import 'package:jobes/core/widgets/showdialog_loadin.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/featuers/auth/reset_password_screen/logic/cubit/resetpassword_cubit.dart';
import 'package:jobes/featuers/auth/reset_password_screen/logic/cubit/resetpassword_state.dart';

class ResetPasswordBlocListner extends StatelessWidget {
  const ResetPasswordBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialogLoading(context);
          },
          success: (response) {
            context.pop();
            context.pushNamed(Routes.resetPasswordConformationScreen);
          },
          error: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
