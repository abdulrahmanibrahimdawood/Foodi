import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Assets.imagesLogo,
              height: 36,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(height: 4),
            CustomText(
              text: 'Hello, Abdo Ibrahim!',
              fontSize: 16,
              color: Colors.grey,
            ),
          ],
        ),
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesProfile),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}
