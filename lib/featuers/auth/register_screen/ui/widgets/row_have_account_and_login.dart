import 'package:flutter/material.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/styles.dart';

class RowHaveAcountAndButtonLogin extends StatelessWidget {
  const RowHaveAcountAndButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Have an account?',
          style: TextStyles.font14Gray,
        ),
        TextButton(
          child: Text(
            'Login',
            style: TextStyles.font14MainBlue,
          ),
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
        ),
      ],
    );
  }
}
