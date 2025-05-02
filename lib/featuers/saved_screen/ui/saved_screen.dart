import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/featuers/saved_screen/ui/widgets/list_view_builder_card.dart';
import 'package:jobes/featuers/saved_screen/ui/widgets/list_view_separated_buttons.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: ColorsApp.backGroundWhite,
        centerTitle: true,
        title: Text(
          'Saved',
          style: TextStyles.font16Black,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            context.pushReplacementNamed(Routes.layoutScreen);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You saved 48 Jobs 👍',
              style: TextStyles.font22BlackBold,
            ),
            verticalSpace(36),
            const ListViewSeparated(),
            verticalSpace(24),
            ListViewBuilderCard(),
          ],
        ),
      ),
    );
  }
}
