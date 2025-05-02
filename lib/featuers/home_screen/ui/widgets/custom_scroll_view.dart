import 'package:flutter/widgets.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/row_text_and_see_all.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/container_page_view_builder.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/list_view_builder_jobs_popular.dart';
import 'package:jobes/featuers/home_screen/ui/widgets/sliver_grid_recomented_jobs.dart';

class CustomScrollViewHomeScreen extends StatelessWidget {
  const CustomScrollViewHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Featured Jobs
        SliverToBoxAdapter(
          child: RowTextAndSeeAll(
            text: 'Featured Jobs',
            seeAllText: 'See all',
            textStyle: TextStyles.font16Black,
            seeAllTextStyle: TextStyles.font12Gray,
            onPressed: () {},
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(15),
        ),
        // Container PageView (featured jobs)..
        SliverListContainerPageView(),
        SliverToBoxAdapter(
          child: verticalSpace(10),
        ),
        // Grid View (recomented jobs)..
        SliverToBoxAdapter(
          child: RowTextAndSeeAll(
            text: 'Recommended Jobs',
            seeAllText: 'See all',
            textStyle: TextStyles.font16Black,
            seeAllTextStyle: TextStyles.font12Gray,
            onPressed: () {},
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(15),
        ),
        SliverGridRecomentedJobs(),
        // List View (popular jobs)..
        SliverToBoxAdapter(
          child: RowTextAndSeeAll(
            text: 'Popular Jobs',
            seeAllText: 'See all',
            textStyle: TextStyles.font16Black,
            seeAllTextStyle: TextStyles.font12Gray,
            onPressed: () {},
          ),
        ),
        SliverListPopularJobsListView(),
        SliverToBoxAdapter(
          child: verticalSpace(15),
        ),
      ],
    );
  }
}
