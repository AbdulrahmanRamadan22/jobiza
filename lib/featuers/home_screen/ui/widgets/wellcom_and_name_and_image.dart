import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/cache/constants.dart';
import 'package:jobes/core/cache/shared_pref.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class WellcomAndNameAndImagePerson extends StatelessWidget {
  const WellcomAndNameAndImagePerson({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColorsApp.backGroundWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: ListTile(
        title: Text('Welcome to Jobseek!', style: TextStyles.font12Gray),
        contentPadding: EdgeInsets.symmetric(vertical: 2),
        minTileHeight: 35.h,
        subtitle: Text(
          'Hello, ${SharedPrefHelper.getData(key: SharedPrefKeys.fullName) ?? ''}',
          style: TextStyles.font22BlackBold,
        ),
        trailing: CircleAvatar(
          backgroundColor: ColorsApp.lightGray,
          radius: 30.r,
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.profileScreen);
            },
            child: Image.asset(
              'assets/images/photo_persone.png',
            ),
          ),
        ),
      ),
    );
  }
}
