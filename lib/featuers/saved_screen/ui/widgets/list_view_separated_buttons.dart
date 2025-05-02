import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';

class ListViewSeparated extends StatefulWidget {
  const ListViewSeparated({super.key});

  @override
  State<ListViewSeparated> createState() => _ListViewSeparatedState();
}

class _ListViewSeparatedState extends State<ListViewSeparated> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;

          return AppTextButton(
            backgroundColor: isSelected ? ColorsApp.darkBlue : ColorsApp.gray,
            borderRadius: 6.r,
            buttonHeight: 50.h,
            buttonWidth: 105.w,
            buttonText: 'Developer',
            textStyle: TextStyles.font16White,
            onPressed: () {
              setState(
                () {
                  selectedIndex = index;
                },
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10.w);
        },
      ),
    );
  }
}
