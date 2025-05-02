import 'package:flutter/material.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/form_field_app_text.dart';

class SearchWidgetInMessageScreen extends StatelessWidget {
  const SearchWidgetInMessageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Search a chat or message',
      hintStyle: TextStyles.font14Gray,
      validator: (value) {},
    );
  }
}
