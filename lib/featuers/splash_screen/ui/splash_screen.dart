import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jobes/featuers/onbording_screen/ui/onbording_screen.dart';
import 'package:jobes/featuers/splash_screen/ui/widget/container_spashe_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    // Animation for scaling the logo
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCirc,
    );

    // Navigate to next screen after splash
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnbordingScreen()),
          // MaterialPageRoute(
          //     builder: (context) => BlocProvider(
          //           create: (context) => LayoutCubit(),
          //           child: LayoutScreens(),
          //         )),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpashScreenContainer(animation: _animation),
    );
  }
}
