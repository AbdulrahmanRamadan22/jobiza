import 'package:flutter/material.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/styles.dart';

class TextNamedAndForgetPassowrd extends StatelessWidget {
  const TextNamedAndForgetPassowrd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Jôbizz',
          style: TextStyles.font22MainBlue,
        ),
        verticalSpace(35),
        Text('Forgot Password', style: TextStyles.font24DarkBlack),
        verticalSpace(17),
        Text(
          textAlign: TextAlign.center,
          'Enter your email , we will send you verification code',
          style: TextStyles.font14Gray,
        ),
      ],
    );
  }
}
