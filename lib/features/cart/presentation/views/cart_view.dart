import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/cart/presentation/widgets/cart_view_body.dart';
import 'package:foodi_app/features/products/presentation/widgets/custom_button.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartViewBody(),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
          vertical: kVerticalPadding / 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: Colors.transparent,
        ),
        height: 92,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Total',
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
            CustomButton(text: 'Checkout', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
