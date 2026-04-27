import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.rate,
    required this.text,
    required this.description,
  });
  final String image, text, rate, description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: 200,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        shadows: [
          BoxShadow(
            color: Color(0x21000000),
            blurRadius: 16,
            offset: Offset(0, 6),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 200, width: 180),
          CustomText(text: text, fontSize: 16, fontWeight: FontWeight.w600),
          CustomText(
            text: description,
            fontSize: 14,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16),
              SizedBox(width: 4),
              CustomText(text: rate),
              Spacer(),
              Icon(CupertinoIcons.heart, color: AppColors.primaryColor),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
