import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/widgets/showdialog_errors.dart';
import 'package:jobes/core/widgets/showdialog_loadin.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/featuers/auth/otp_screen/logic/cubit/otp_cubit.dart';
import 'package:jobes/featuers/auth/otp_screen/logic/cubit/otp_state.dart';

class OtpBlocListener extends StatelessWidget {
  const OtpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpCubit, OtpState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialogLoading(context);
          },
          success: (otpResponse) {
            // Removed the extra parameter
            context.pop(); // Close loading dialog
            context.pushNamed(Routes.resetPasswordScreen);
          },
          error: (apiErrorModel) {
            context.pop();
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
