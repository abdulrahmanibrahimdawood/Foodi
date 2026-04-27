import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/features/home/widgets/custom_search_text_feild.dart';
import 'package:foodi_app/features/home/widgets/custom_sliver_grid.dart';
import 'package:foodi_app/features/home/widgets/food_categories.dart';
import 'package:foodi_app/features/home/widgets/home_view_header.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<String> categories = ['All', 'Combo', 'Sliders', 'Classic'];
  int categorySelected = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 174,
          collapsedHeight: 174,
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 80),
                  HomeViewHeader(),
                  SizedBox(height: 24),
                  CustomSearchTextFeild(),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 12)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          sliver: SliverToBoxAdapter(
            child: FoodCategories(
              categories: categories,
              selectedIndex: categorySelected,
              onCategoryTap: (index) {
                setState(() {
                  categorySelected = index;
                });
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          sliver: CustomSliverGrid(),
        ),
      ],
    );
  }
}
