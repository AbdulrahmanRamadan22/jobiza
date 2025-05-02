import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/row_text_and_see_all.dart';
import 'package:jobes/featuers/category_screen/ui/widget/sliver_grid_category_popular.dart';
import 'package:jobes/featuers/category_screen/ui/widget/sliver_grid_category_trending.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backGroundWhite,
        centerTitle: true,
        scrolledUnderElevation: 0,
        title: Text('Category', style: TextStyles.font16Black),
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
                      text: 'Popular',
                      seeAllText: 'See all',
                      textStyle: TextStyles.font16Black,
                      seeAllTextStyle: TextStyles.font12Gray,
                      onPressed: () {},
                    ),
                  ),
                  SliverGridCategoryPopular(),
                  // Treaing ..
                  SliverToBoxAdapter(
                    child: RowTextAndSeeAll(
                      text: 'Trending',
                      seeAllText: 'See all',
                      textStyle: TextStyles.font16Black,
                      seeAllTextStyle: TextStyles.font12Gray,
                      onPressed: () {},
                    ),
                  ),
                  SliverGridCategoryTrending()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
