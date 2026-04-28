import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/checkout/presentation/widgets/custom_payment_item.dart';
import 'package:foodi_app/features/checkout/presentation/widgets/custom_row_checkout_details.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  String selectedPaymentMethod = 'Cash on Delivery';
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'Order summary',
          color: Color(0xFF3C2F2F),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(height: 12),
        const CustomRowCheckoutDetails(text: 'Order', price: '\$12.00'),
        const CustomRowCheckoutDetails(text: 'Taxis', price: '\$14.00'),
        const CustomRowCheckoutDetails(text: 'Delivery fees', price: '\$2.00'),
        const Divider(color: Color(0xFFD9D9D9), thickness: 1, height: 32),
        const CustomRowCheckoutDetails(
          text: 'Total',
          price: '\$298.00',
          isBold: true,
        ),
        const SizedBox(height: 12),
        const CustomRowCheckoutDetails(
          fontSize: 12,
          text: 'Estimated delivery time:',
          price: '15 - 30 mins',
          isBold: true,
        ),
        const SizedBox(height: 48),
        const CustomText(
          text: 'Payment methods',
          color: Color(0xFF3C2F2F),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(height: 24),

        GestureDetector(
          onTap: () {
            setState(() {
              selectedPaymentMethod = 'Cash on Delivery';
            });
          },
          child: CustomPaymentItem(
            textpaymentmethod: 'Cash on Delivery',
            value: 'Cash on Delivery',
            image: Assets.imagesDollar,
            selectedPaymentMethod: selectedPaymentMethod,
          ),
        ),
        const SizedBox(height: 16),

        GestureDetector(
          onTap: () {
            setState(() {
              selectedPaymentMethod = 'Debit Card';
            });
          },
          child: CustomPaymentItem(
            isSubtitle: true,
            textpaymentmethod: 'Debit Card',
            radioColor: AppColors.secondaryColor,
            textColor: AppColors.secondaryColor,
            value: 'Debit Card',
            image: Assets.imagesVisa,
            color: Color(0xFFF3F4F6),
            selectedPaymentMethod: selectedPaymentMethod,
          ),
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Transform.scale(
              scale: 1.2,
              child: Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                activeColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                side: const BorderSide(color: Colors.red, width: 2),
              ),
            ),
            const CustomText(
              text: 'Save card details for future payments',
              color: Color(0xFF7F7F7F),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
