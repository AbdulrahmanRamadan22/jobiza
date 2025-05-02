import 'package:flutter/material.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/styles.dart';

class TextWelcomLoginSceen extends StatelessWidget {
  const TextWelcomLoginSceen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jôbizz',
          style: TextStyles.font22MainBlue,
        ),
        verticalSpace(8),
        Text(
          'Welcome Back 👋',
          style: TextStyles.font24DarkBlack,
        ),
        verticalSpace(7),
        Text(
          'Let’s log in. Apply to jobs!',
          style: TextStyles.font14Gray,
        ),
      ],
    );
  }
}
