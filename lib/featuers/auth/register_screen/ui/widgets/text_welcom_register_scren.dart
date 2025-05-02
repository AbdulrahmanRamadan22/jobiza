import 'package:flutter/material.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/styles.dart';

class TextWelcomRegisterSceen extends StatelessWidget {
  const TextWelcomRegisterSceen({
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
          'Registration 👍',
          style: TextStyles.font24DarkBlack,
        ),
        verticalSpace(7),
        Text(
          'Let’s Register. Apply to jobs!',
          style: TextStyles.font14Gray,
        ),
      ],
    );
  }
}
