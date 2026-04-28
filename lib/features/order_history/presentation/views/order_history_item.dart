import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/products/presentation/widgets/custom_button.dart';

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: kVerticalPadding * 1.5,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadows: const [
          BoxShadow(
            color: Color(0x21000000),
            blurRadius: 16,
            offset: Offset(0, 6),
          ),
        ],
      ),

      child: Column(
        children: [
          Row(
            children: [
              Image.asset(Assets.imagesBurger2),
              SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                    text: 'Sandwich',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(text: 'Qty: 1', fontSize: 14),
                  CustomText(text: 'Price: \$6.99', fontSize: 14),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          CustomButton(
            width: double.infinity,
            height: 56,
            text: 'Reorder',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
