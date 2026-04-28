import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/checkout/presentation/widgets/build_payment_dialog.dart';
import 'package:foodi_app/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:foodi_app/features/products/presentation/widgets/custom_button.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
          vertical: kVerticalPadding,
        ),
        child: CheckoutViewBody(),
      ),
      appBar: AppBar(
        title: CustomText(
          text: 'Checkout',
          color: AppColors.primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
          vertical: kVerticalPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: Colors.transparent,
        ),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Total price',
                  color: Color(0xFF3C2F2F),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 4),
                CustomText(
                  text: '\$187.19',
                  color: Color(0xFF3C2F2F),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            CustomButton(
              text: 'Pay now',
              onTap: () {
                buildPaymentDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
