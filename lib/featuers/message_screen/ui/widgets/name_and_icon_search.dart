import 'package:flutter/material.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class NameIconSearch extends StatelessWidget {
  const NameIconSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Messages',
          style: TextStyles.font16Black,
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: ColorsApp.mainBlue,
          ),
        ),
      ],
    );
  }
}
