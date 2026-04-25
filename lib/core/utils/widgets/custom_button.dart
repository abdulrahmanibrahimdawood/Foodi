import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Center(
          child: CustomText(
            text: 'Login',
            color: AppColors.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
