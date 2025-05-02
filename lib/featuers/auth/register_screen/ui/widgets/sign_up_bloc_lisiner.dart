import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/widgets/showdialog_errors.dart';
import 'package:jobes/core/widgets/showdialog_loadin.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/featuers/auth/register_screen/logic/cubit/sign_up_cubit.dart';
import 'package:jobes/featuers/auth/register_screen/logic/cubit/sign_up_state.dart';

class SignUpBlocLisiner extends StatelessWidget {
  const SignUpBlocLisiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialogLoading(context);
          },
          success: (signUpResponse) {
            context.pop();

            context.pushNamed(Routes.loginScreen);
          },
          failure: (apiErrorModel) {
            context.pop();
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
