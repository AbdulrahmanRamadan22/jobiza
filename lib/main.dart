import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobes/core/cache/shared_pref.dart';
import 'package:jobes/core/di/dependancy_ingection.dart';
import 'package:jobes/core/helper/bloc_observer.dart';
import 'package:jobes/core/routing/app_router.dart';
import 'package:jobes/jobiza_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize shared preferences
  await await SharedPrefHelper.init();
  // Initialize dependency injection
  setupGetIt();

    Bloc.observer = MyBlocObserver();


  // Initialize the app
  // String? initialRoute;
  runApp(
    JobizaApp(
      appRouter: AppRouter(),
    ),
  );
}
