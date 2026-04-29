import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_sliver_appbar.dart';
import 'package:foodi_app/features/auth/presentation/widgets/custom_profile_text_feild.dart';
import 'package:foodi_app/features/checkout/presentation/widgets/custom_payment_item.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    nameController.text = 'John Doe';
    emailController.text = '8zC0I@example.com';
    addressController.text = '123 Main St, Anytown USA';
    passwordController.text = '******************';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          backgroundColor: AppColors.primaryColor,
          leading: Icon(Icons.arrow_back_ios, color: Colors.white),
          trailing: IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: kVerticalPadding,
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Container(
                  width: 136,
                  height: 136,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.imagesProfile),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                ),
              ),
              SizedBox(height: 32),
              CustomProfileTextFeild(
                labelText: 'Name',
                controller: nameController,
              ),
              SizedBox(height: 16),
              CustomProfileTextFeild(
                labelText: 'Email',
                controller: emailController,
              ),
              SizedBox(height: 16),
              CustomProfileTextFeild(
                labelText: 'Delivery Address',
                controller: addressController,
              ),
              SizedBox(height: 16),
              CustomProfileTextFeild(
                labelText: 'Password',
                controller: passwordController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Divider(color: Colors.white, height: 40),
              ),
              CustomPaymentItem(
                isSubtitle: true,
                textpaymentmethod: 'Debit Card',
                radioColor: AppColors.secondaryColor,
                textColor: AppColors.secondaryColor,
                value: 'Debit Card',
                image: Assets.imagesVisa,
                color: Color(0xFFF3F4F6),
                selectedPaymentMethod: 'Debit Card',
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
