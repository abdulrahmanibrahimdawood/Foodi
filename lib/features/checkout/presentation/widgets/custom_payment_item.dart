import 'package:flutter/material.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';

class CustomPaymentItem extends StatelessWidget {
  const CustomPaymentItem({
    super.key,
    required this.selectedPaymentMethod,
    this.color,
    required this.image,
    required this.value,
    this.textColor,
    this.radioColor,
    required this.textpaymentmethod,
    this.isSubtitle,
  });

  final String selectedPaymentMethod, image, value, textpaymentmethod;
  final Color? color, textColor, radioColor;
  final bool? isSubtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: EdgeInsets.all(8),
      tileColor: color ?? Colors.green.shade500,
      leading: AspectRatio(aspectRatio: 1, child: Image.asset(image)),
      trailing: Radio<String>(
        activeColor: radioColor ?? Colors.white,
        value: value,
        groupValue: selectedPaymentMethod,
        onChanged: (value) {},
      ),
      title: CustomText(
        text: textpaymentmethod,
        color: textColor ?? Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      subtitle: isSubtitle ?? false
          ? CustomText(
              text: '3566 **** **** 0505',
              color: const Color(0xFF7F7F7F),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )
          : null,
    );
  }
}
