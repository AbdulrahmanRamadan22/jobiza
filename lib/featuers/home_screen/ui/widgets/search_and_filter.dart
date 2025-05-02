import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/form_field_app_text.dart';

class Searchandfilter extends StatelessWidget {
  const Searchandfilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            controller: TextEditingController(),
            prefixIcon: Icon(
              Icons.search,
              color: ColorsApp.gray,
              size: 25.sp,
            ),
            hintText: 'Search a job or position',
            hintStyle: TextStyles.font14Gray,
            validator: (value) {},
          ),
        ),
        horizontalSpace(10),
        GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, FilterScreen.routeName);
          },
          child: Container(
            height: 55.h,
            width: 55.w,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsApp.lightGray),
              color: ColorsApp.mistyGrey,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Icon(
              Icons.filter_list_rounded,
              color: ColorsApp.darkBlue,
              size: 19.sp,
            ),
          ),
        )
      ],
    );
  }
}
