import 'package:flutter/material.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/row_text_and_see_all.dart';
import 'package:jobes/featuers/notifications_screen/ui/widgets/sliver_list_app.dart';
import 'package:jobes/featuers/notifications_screen/ui/widgets/sliver_list_inter_view.dart';
import 'package:jobes/featuers/notifications_screen/ui/widgets/sliver_list_new_active.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            context.pushReplacementNamed(Routes.layoutScreen);
          },
        ),
        backgroundColor: ColorsApp.backGroundWhite,
        centerTitle: true,
        elevation: 0,
        title: Text('Notification', style: TextStyles.font16Black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            // New activity قسم
            SliverToBoxAdapter(
              child: Text(
                'New activity',
                style: TextStyles.font14Black,
              ),
            ),
            SliverListNewActive(),
            // Applications قسم
            SliverToBoxAdapter(
              child: RowTextAndSeeAll(
                text: 'Applications',
                seeAllText: 'See all',
                textStyle: TextStyles.font14Black,
                seeAllTextStyle: TextStyles.font12Gray,
                onPressed: () {},
              ),
            ),
            SliverListApp(),
            // Inter view قسم
            SliverToBoxAdapter(
              child: RowTextAndSeeAll(
                text: 'Interview',
                seeAllText: 'See all',
                textStyle: TextStyles.font14Black,
                seeAllTextStyle: TextStyles.font12Gray,
                onPressed: () {},
              ),
            ),
            SliverListInterView()
          ],
        ),
      ),
    );
  }
}
