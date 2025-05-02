import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/featuers/job_types_screen/ui/widgets/list_view_card_job_types.dart';

class JobTypesScreen extends StatelessWidget {
  const JobTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: ColorsApp.black),
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
        ),
        scrolledUnderElevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text('Jôbizz', style: TextStyles.font22MainBlue),
            ),
            verticalSpace(17),
            Text(
              'What type of job you’re looking for?',
              style: TextStyles.font24DarkBlack,
            ),
            verticalSpace(20),
            ListViewCardsJobTypes(),
            verticalSpace(20),
            AppTextButton(
              borderRadius: 5.r,
              buttonHeight: 62.h,
              buttonText: 'Save',
              textStyle: TextStyles.font16White,
              onPressed: () {
                context.pushNamed(Routes.jobPreferences);
              },
            ),
          ],
        ),
      ),
    );
  }
}
