import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/core/di/dependancy_ingection.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/featuers/applied_job_details/ui/applied_job_details.dart';
import 'package:jobes/featuers/apply_screen/ui/apply_screen.dart';
import 'package:jobes/featuers/apply_success/ui/apply_success_screen.dart';
import 'package:jobes/featuers/auth/change_password/ui/change_password_screen.dart';
import 'package:jobes/featuers/auth/forget_password_screen/logic/cubit/forget_pass_cubit.dart';
import 'package:jobes/featuers/auth/forget_password_screen/ui/forget_pass_screen.dart';
import 'package:jobes/featuers/auth/login_screen/logic/cubit/login_cubit.dart';
import 'package:jobes/featuers/auth/login_screen/ui/login_screen.dart';
import 'package:jobes/featuers/auth/otp_screen/logic/cubit/otp_cubit.dart';
import 'package:jobes/featuers/auth/otp_screen/ui/otp_screen.dart';
import 'package:jobes/featuers/auth/register_screen/logic/cubit/sign_up_cubit.dart';
import 'package:jobes/featuers/auth/register_screen/ui/register_screen.dart';
import 'package:jobes/featuers/auth/reset_password_confirmation/ui/reset_password_conformation.dart';
import 'package:jobes/featuers/auth/reset_password_screen/logic/cubit/resetpassword_cubit.dart';
import 'package:jobes/featuers/auth/reset_password_screen/ui/reset_password.dart';
import 'package:jobes/featuers/category_screen/ui/category_screen.dart';
import 'package:jobes/featuers/companies/ui/compaies_screen.dart';
import 'package:jobes/featuers/home_screen/ui/home_screen.dart';
import 'package:jobes/featuers/job_details_screen/ui/job_details_screen.dart';
import 'package:jobes/featuers/job_preferences_screen/ui/job_preferences.dart';
import 'package:jobes/featuers/job_types_screen/ui/job_types_screen.dart';
import 'package:jobes/featuers/layout_screen/logic/cubit/layout_cubit.dart';
import 'package:jobes/featuers/layout_screen/ui/layout_screen.dart';
import 'package:jobes/featuers/message_screen/ui/message_screen.dart';
import 'package:jobes/featuers/notifications_screen/ui/notifications.dart';
import 'package:jobes/featuers/onbording_screen/ui/onbording_screen.dart';
import 'package:jobes/featuers/auth/profile_screen/ui/profile_screen.dart';
import 'package:jobes/featuers/resume_and_portfolio_screen/ui/resume_and_protfolio_screen.dart';
import 'package:jobes/featuers/saved_screen/ui/saved_screen.dart';
import 'package:jobes/featuers/settings_screen/ui/settings_screen.dart';
import 'package:jobes/featuers/splash_screen/ui/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // splash screen
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      // onBoarding screen
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnbordingScreen(),
        );
// Job types screen
      case Routes.jobTypes:
        return MaterialPageRoute(
          builder: (_) => JobTypesScreen(),
        );
      // job preferences screen
      case Routes.jobPreferences:
        return MaterialPageRoute(
          builder: (_) => const JobPreferencesScreen(),
        );
      // register screen
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignUpCubit(getIt()),
            child: const RegisterScreen(),
          ),
        );
      // Login screen
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
        );
      // forgot password
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ForgetPassCubit(getIt()),
            child: const ForgetPassScreen(),
          ),
        );
      // otp screen
      case Routes.otpScreen:
        final email = settings.arguments as String;

        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => OtpCubit(getIt()),
            child: OtpScreen(
              email: email,
            ),
          ),
        );
      // reset password
      case Routes.resetPasswordScreen:
        // final token = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ResetPasswordCubit(
              getIt(),
            ),
            child: const ResetPasswordScreen(),
          ),
        );
      // reset password conformation
      case Routes.resetPasswordConformationScreen:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordConformation(),
        );
      // layout screen
      case Routes.layoutScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LayoutCubit(),
            child: const LayoutScreens(),
          ),
        );

      // home screen
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      // settings screen
      case Routes.settingsScreen:
        return MaterialPageRoute(
          builder: (context) => const SettingScreen(),
        );
      // job details screen
      case Routes.jobDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => JobDetailsScreen(),
        );
      // apply screen
      case Routes.applyScreen:
        return MaterialPageRoute(
          builder: (context) => ApplyScreen(),
        );
      // apply Success screen
      case Routes.applySuccessScreen:
        return MaterialPageRoute(
          builder: (context) => ApplySuccessScreen(),
        );
      // applied JobDetails Screen
      case Routes.appliedJobDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => AppliedJobDetailsScreen(),
        );
      // messages screen
      case Routes.messageScreen:
        return MaterialPageRoute(
          builder: (context) => MessagesScreen(),
        );
      // categoryscreen
      case Routes.categoryScreen:
        return MaterialPageRoute(
          builder: (context) => CategoryScreen(),
        );
      // companies screen
      case Routes.campaniesScreen:
        return MaterialPageRoute(
          builder: (context) => CompaiesScreen(),
        );
      // notifications screen
      case Routes.notificationsScreen:
        return MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        );
      // Saved screen
      case Routes.savedScreen:
        return MaterialPageRoute(
          builder: (context) => const SavedScreen(),
        );
      // Profile screen
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
      //  resume And protfolio screen
      case Routes.resumeAndProtfolioScreen:
        return MaterialPageRoute(
          builder: (context) => ResumeAndProtfolioScreen(),
        );
      // change password screen
      case Routes.changePasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ChangePasswordScreen(),
        );
      default:
        return null;
    }
  }
}
