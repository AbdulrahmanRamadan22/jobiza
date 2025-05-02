import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/cache/constants.dart';
import 'package:jobes/core/cache/shared_pref.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import '../../../../core/helper/size_box.dart';

class ListViewDrawer extends StatelessWidget {
  const ListViewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        // Header Section
        Container(
          height: 305.h,
          color: ColorsApp.backGroundWhite,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              verticalSpace(16),
              CircleAvatar(
                radius: 40.r,
                backgroundImage:
                    const AssetImage('assets/images/photo_persone.png'),
              ),
              verticalSpace(16),
              Text('${SharedPrefHelper.getData(key: SharedPrefKeys.fullName)}',
                  style: TextStyles.font16Black),
              verticalSpace(4),
              Text('Flutter Developer', style: TextStyles.font14Gray),
              Text(
                  'Email : ${SharedPrefHelper.getData(key: SharedPrefKeys.email)}',
                  style: TextStyles.font14Gray),
              verticalSpace(16),
              OutlinedButton(
                onPressed: () => context.pushNamed(Routes.profileScreen),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: ColorsApp.mainBlue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 8.h,
                  ),
                ),
                child: Text(
                  'View Profile',
                  style: TextStyles.font14MainBlue,
                ),
              ),
            ],
          ),
        ),

        // Divider between sections
        Container(
          height: 8.h,
          color: ColorsApp.lightGray.withOpacity(0.1),
        ),

        // Menu Items Section
        Container(
          color: ColorsApp.backGroundWhite,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              verticalSpace(16),
              _buildMenuItem(
                icon: Icons.person_outline,
                title: 'Personal Info',
                onTap: () => context.pushNamed(Routes.profileScreen),
              ),
              _buildMenuItem(
                icon: Icons.work_outline,
                title: 'Applications',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.description_outlined,
                title: 'Proposals',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.assignment_outlined,
                title: 'Resumes',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.photo_library_outlined,
                title: 'Portfolio',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.email_outlined,
                title: 'Cover Letters',
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.settings_outlined,
                title: 'Settings',
                onTap: () => context.pushNamed(Routes.settingsScreen),
              ),

              // Divider before actions
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Divider(
                  height: 1.h,
                  color: ColorsApp.lightGray.withOpacity(0.3),
                ),
              ),

              // Action Buttons
              _buildMenuItem(
                icon: Icons.exit_to_app,
                title: 'Logout',
                color: ColorsApp.red,
                iconColor: ColorsApp.red,
                onTap: () => context.pushNamedAndRemoveUntil(
                  Routes.loginScreen,
                  predicate: (Route<dynamic> route) => false,
                ),
              ),
              // verticalSpace(16),
              // AppTextButton(
              //   borderRadius: 8.r,
              //   buttonHeight: 50.h,
              //   buttonWidth: double.infinity,
              //   buttonText: 'Go Premium',
              //   textStyle: TextStyles.font16White,
              //   backgroundColor: ColorsApp.mainBlue,
              //   onPressed: () {},
              // ),
              // verticalSpace(24),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? color,
    Color? iconColor,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 24.w,
      leading: Icon(icon, color: iconColor ?? ColorsApp.lightGray, size: 24.r),
      title: Text(
        title,
        style: TextStyles.font16Black.copyWith(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: ColorsApp.lightGray,
        size: 24.r,
      ),
      onTap: onTap,
    );
  }
}
