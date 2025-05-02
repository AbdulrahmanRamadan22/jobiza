import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/cache/constants.dart';
import 'package:jobes/core/cache/shared_pref.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/featuers/auth/profile_screen/ui/widgets/row_detiles_acount.dart';

class ImageAndNamedAndJob extends StatelessWidget {
  const ImageAndNamedAndJob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: ColorsApp.gray,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 58.r,
            child: Image.asset(
              'assets/images/photo_persone.png',
              fit: BoxFit.cover,
              width: 120.w,
            ),
          ),
          verticalSpace(12),
          Text(
            '${SharedPrefHelper.getData(key: SharedPrefKeys.fullName) ?? ''} ',
            style: TextStyles.font22BlackBold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '${SharedPrefHelper.getData(key: SharedPrefKeys.fullName) ?? 'Flutter Developer'} ',
                  style: TextStyles.font12Gray),
              horizontalSpace(4),
              Icon(
                Icons.check_circle,
                color: ColorsApp.lightBlue,
                size: 15.r,
              ),
            ],
          ),
          verticalSpace(40),
          RowDetilsAcount(),
        ],
      ),
    );
  }
}
