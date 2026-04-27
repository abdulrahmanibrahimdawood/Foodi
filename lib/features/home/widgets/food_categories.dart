import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategoryTap,
  });

  final List<String> categories;
  final int selectedIndex;
  final Function(int) onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            onTap: () => onCategoryTap(index),
            child: Container(
              margin: const EdgeInsets.only(right: 4),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.primaryColor
                    : const Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(12),
              ),
              child: CustomText(
                text: categories[index],
                color: selectedIndex == index
                    ? Colors.white
                    : AppColors.primaryColor,
                fontSize: 12,
                fontWeight: selectedIndex == index
                    ? FontWeight.w700
                    : FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
