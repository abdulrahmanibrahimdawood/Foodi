import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/features/home/widgets/card_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return CardItem(
          rate: '4.9',
          image: Assets.imagesBurger1,
          text: 'Cheeseburger',
          description: "Wendy's Burger",
        );
      }, childCount: 9),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
    );
  }
}
