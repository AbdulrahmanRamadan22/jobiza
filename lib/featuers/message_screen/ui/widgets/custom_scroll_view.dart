import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/featuers/message_screen/ui/widgets/sliver_list_company.dart';
import 'package:jobes/featuers/message_screen/ui/widgets/sliver_list_indidual_messages.dart';

class CustomScrollviewMessageScreen extends StatelessWidget {
  const CustomScrollviewMessageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // قسم الرسائل غير المقروءة
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Text(
                'Companies',
                style: TextStyles.font14Black,
              ),
            ),
          ),
          SliverListCompanys(),
          ///////////////////
          // قسم الرسائل المقروءة
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Text(
                'Individual Messages',
                style: TextStyles.font14Black,
              ),
            ),
          ),
          SliverListIndividualMessages(),
        ],
      ),
    );
  }
}
