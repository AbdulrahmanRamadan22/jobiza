import 'package:flutter/material.dart';

class SliverGridPortolio extends StatelessWidget {
  const SliverGridPortolio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: 4,
        (context, index) {
          return Image.asset(
            'assets/images/image_portfilo.png',
            fit: BoxFit.cover,
          );
        },
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        crossAxisSpacing: 15, // المسافة بين الأعمدة
        mainAxisSpacing: 10, // المسافة بين الصفوف
      ),
    );
  }
}
