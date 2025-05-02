import 'package:flutter/material.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/styles.dart';

class RowHaveAcountAndButtonRegister extends StatelessWidget {
  const RowHaveAcountAndButtonRegister({
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
            'Register',
            style: TextStyles.font14MainBlue,
          ),
          onPressed: () {
            context.pushNamed(Routes.registerScreen);
          },
        ),
      ],
    );
  }
}
