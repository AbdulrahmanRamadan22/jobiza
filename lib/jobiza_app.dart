// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jobes/core/routing/app_router.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';

class JobizaApp extends StatelessWidget {
  final AppRouter appRouter;
  // final String initialRoute;
  const JobizaApp({
    super.key,
    required this.appRouter,
    // required this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Jobes App',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: ColorsApp.mainBlue,
          scaffoldBackgroundColor: ColorsApp.backGroundWhite,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
