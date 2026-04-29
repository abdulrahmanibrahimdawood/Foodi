import 'package:flutter/material.dart';
import 'package:foodi_app/features/auth/presentation/widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(body: SigninViewBody()),
    );
  }
}
