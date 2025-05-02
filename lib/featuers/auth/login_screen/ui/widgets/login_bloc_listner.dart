import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/widgets/showdialog_errors.dart';
import 'package:jobes/core/widgets/showdialog_loadin.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/featuers/auth/login_screen/logic/cubit/login_cubit.dart';
import 'package:jobes/featuers/auth/login_screen/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialogLoading(context);
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.layoutScreen);
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
