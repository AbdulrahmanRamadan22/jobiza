import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/featuers/message_screen/ui/widgets/custom_scroll_view.dart';
import 'package:jobes/featuers/message_screen/ui/widgets/name_and_icon_search.dart';
import 'package:jobes/featuers/message_screen/ui/widgets/search_in_message_screen.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NameIconSearch(),
              SearchWidgetInMessageScreen(),
              Expanded(
                child: CustomScrollviewMessageScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
