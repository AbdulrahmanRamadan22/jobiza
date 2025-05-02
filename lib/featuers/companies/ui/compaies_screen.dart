import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/row_text_and_see_all.dart';
import 'package:jobes/featuers/companies/ui/widgets/sliver_grid_companies_popular.dart';
import 'package:jobes/featuers/companies/ui/widgets/sliver_grid_companies_trending.dart';

class CompaiesScreen extends StatelessWidget {
  const CompaiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backGroundWhite,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text('Companies', style: TextStyles.font16Black),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 600.h,
              child: CustomScrollView(
                slivers: [
                  // Popular Jobs ..
                  SliverToBoxAdapter(
                    child: RowTextAndSeeAll(
                      text: 'Popular Now',
                      seeAllText: 'See all',
                      textStyle: TextStyles.font16Black,
                      seeAllTextStyle: TextStyles.font12Gray,
                      onPressed: () {},
                    ),
                  ),
                  SliverGridCompaniesPopular(),
                  // Treaing ..
                  SliverToBoxAdapter(
                    child: RowTextAndSeeAll(
                      text: 'Trending Now',
                      seeAllText: 'See all',
                      textStyle: TextStyles.font16Black,
                      seeAllTextStyle: TextStyles.font12Gray,
                      onPressed: () {},
                    ),
                  ),
                  SliverGridCompaniesTrending()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
