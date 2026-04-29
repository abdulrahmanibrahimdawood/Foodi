import 'package:flutter/material.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({
    super.key,
    required this.text,
    required this.borderColor,
    required this.backgroundColor,
    required this.textColor,
    required this.image,
  });
  final String text, image;
  final Color borderColor, backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 2),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CustomText(
            text: text,
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(width: 12),
          Image.asset(image),
        ],
      ),
    );
  }
}
