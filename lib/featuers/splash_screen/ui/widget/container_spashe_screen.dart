import 'package:flutter/material.dart';

class SpashScreenContainer extends StatelessWidget {
  const SpashScreenContainer({
    super.key,
    required Animation<double> animation,
  }) : _animation = animation;

  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF356899),
            Color(0xFF1A334C),
          ],
          stops: const [0.1, 0.9],
        ),
      ),
      child: Center(
        child: ScaleTransition(
            scale: _animation,
            child: Image.asset('assets/images/image_splash_screen.png')),
      ),
    );
  }
}
