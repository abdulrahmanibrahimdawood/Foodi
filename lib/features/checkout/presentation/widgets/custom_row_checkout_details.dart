import 'package:flutter/material.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class CustomRowCheckoutDetails extends StatelessWidget {
  const CustomRowCheckoutDetails({
    super.key,
    required this.text,
    required this.price,
    this.isBold = false,
    this.fontSize = 18,
  });

  final String text, price;
  final bool isBold;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final color = isBold ? const Color(0xFF3C2F2F) : const Color(0xFF7D7D7D);
    final fontWeight = isBold ? FontWeight.w700 : FontWeight.w500;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: text,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          CustomText(
            text: price,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ],
      ),
    );
  }
}
