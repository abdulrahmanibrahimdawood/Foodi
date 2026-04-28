import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: CustomText(
        text: title,
        color: AppColors.primaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
      pinned: true,
      expandedHeight: 64,
      collapsedHeight: 64,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
    );
  }
}
