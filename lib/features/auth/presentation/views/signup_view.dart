import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/features/auth/presentation/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: const SignupViewBody(),
      ),
    );
  }
}
