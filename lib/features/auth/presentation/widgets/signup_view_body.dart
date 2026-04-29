import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/core/utils/widgets/custom_text_form_feild.dart';
import 'package:foodi_app/features/auth/presentation/widgets/custom_button.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Center(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 150),
            SvgPicture.asset(Assets.imagesLogo, color: AppColors.primaryColor),
            SizedBox(height: 12),
            CustomText(
              text: 'Welcome Back, Discover The Fast Food',
              color: AppColors.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 72),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                  vertical: kVerticalPadding * 3,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    CustomTextFormFeild(
                      prefixIcon: Icon(Icons.person, color: Colors.white),
                      hintText: 'Name',
                      controller: nameController,
                    ),
                    SizedBox(height: 16),
                    CustomTextFormFeild(
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                      hintText: 'Email',
                      controller: emailController,
                    ),
                    SizedBox(height: 16),
                    CustomTextFormFeild(
                      obscureText: true,
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Password',
                      controller: passwordController,
                    ),

                    SizedBox(height: 32),
                    CustomAuthButton(
                      text: 'Sign up',
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          print('Sign up');
                        }
                      },
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        CustomText(
                          fontSize: 14,
                          text: 'Already have an account',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CustomText(
                            text: 'Sign in',
                            color: Colors.white,
                            isUnderline: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
