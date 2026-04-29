import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/products/presentation/widgets/custom_button.dart';
import 'package:foodi_app/features/products/presentation/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailsViewBody(),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
          vertical: kVerticalPadding,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withValues(alpha: .15),
              blurRadius: 12,
              offset: const Offset(0, -6),
            ),
          ],
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
            CustomButton(text: 'Add to cart', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
