import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/features/auth/presentation/widgets/custom_profile_button.dart';
import 'package:foodi_app/features/auth/presentation/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: ProfileViewBody(),
        bottomSheet: SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomProfileButton(
                borderColor: AppColors.primaryColor,
                backgroundColor: Colors.white,
                textColor: AppColors.primaryColor,
                text: 'Edit Profile',
                image: Assets.imagesEditIcon,
              ),
              SizedBox(width: 24),
              CustomProfileButton(
                borderColor: AppColors.primaryColor,
                backgroundColor: AppColors.primaryColor,
                textColor: Colors.white,
                text: 'Edit Profile',
                image: Assets.imagesLogoutIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
