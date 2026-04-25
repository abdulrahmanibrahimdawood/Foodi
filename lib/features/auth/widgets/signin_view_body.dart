import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/utils/widgets/custom_button.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/core/utils/widgets/custom_text_form_feild.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 150),
              SvgPicture.asset(Assets.imagesLogo),
              SizedBox(height: 12),
              CustomText(
                text: 'Welcome Back, Discover The Fast Food',
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 32),
              CustomTextFormFeild(
                controller: emailController,
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
              ),
              SizedBox(height: 16),
              CustomTextFormFeild(
                controller: passwordController,
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 32),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    print('Login');
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
