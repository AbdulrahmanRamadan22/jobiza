import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class RowDiverderAndText extends StatelessWidget {
  const RowDiverderAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1.3.h,
            color: ColorsApp.gray,
          ),
        ),
        horizontalSpace(14),
        Text(
          'Or continue with',
          style: TextStyles.font14Gray,
        ),
        horizontalSpace(14),
        Expanded(
          child: Divider(
            thickness: 1.3.h,
            color: ColorsApp.gray,
          ),
        ),
      ],
    );
  }
}
