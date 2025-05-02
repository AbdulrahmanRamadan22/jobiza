import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/featuers/onbording_screen/data/model/model_onbording.dart';

class TextAndSubText extends StatelessWidget {
  const TextAndSubText({
    super.key,
    required this.model,
  });

  final ModelOnbording model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model.title,
          style: TextStyles.font24DarkBlack,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(model.description,
              textAlign: TextAlign.center, style: TextStyles.font14Gray),
        ),
      ],
    );
  }
}
