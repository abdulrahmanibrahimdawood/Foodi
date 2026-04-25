import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_text_form_feild.dart';
import 'package:foodi_app/features/auth/widgets/custom_button.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 150),
              SvgPicture.asset(Assets.imagesLogo),
              SizedBox(height: 80),
              CustomTextFormFeild(
                prefixIcon: Icon(Icons.person),
                hintText: 'Name',
                controller: nameController,
              ),
              SizedBox(height: 16),
              CustomTextFormFeild(
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
                controller: emailController,
              ),
              SizedBox(height: 16),
              CustomTextFormFeild(
                obscureText: true,
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                controller: passwordController,
              ),
              SizedBox(height: 16),
              CustomTextFormFeild(
                obscureText: true,
                prefixIcon: Icon(Icons.lock),
                hintText: 'Confirm Password',
                controller: confirmPasswordController,
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
            ],
          ),
        ),
      ),
    );
  }
}
