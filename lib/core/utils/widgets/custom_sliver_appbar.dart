import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.title,
    this.backgroundColor,
    this.leading,
    this.trailing,
  });
  final String? title;
  final Color? backgroundColor;
  final Widget? leading, trailing;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: leading,
      actions: [trailing ?? const SizedBox.shrink()],
      backgroundColor: backgroundColor ?? Colors.white,
      title: CustomText(
        text: title ?? '',
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
