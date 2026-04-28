import 'package:flutter/material.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/products/presentation/widgets/custom_button.dart';

Future<dynamic> buildPaymentDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            padding: const EdgeInsets.all(20),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFFFFF8F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: [
                BoxShadow(
                  color: const Color(0x3F000000),
                  blurRadius: 47,
                  offset: const Offset(0, 19),
                  spreadRadius: -8,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF07421C),
                        shape: OvalBorder(),
                      ),
                    ),
                    const Positioned.fill(
                      child: Icon(Icons.check, color: Colors.white, size: 48),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                const Text(
                  'Success !',
                  style: TextStyle(
                    color: Color(0xFF07421C),
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 10),

                const SizedBox(
                  width: 199,
                  child: CustomText(
                    text:
                        "Your payment was successful.A receipt for this purchase has been sent to your email.",
                    color: Color(0xFFBCBABA),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 20),

                CustomButton(
                  text: 'Go Back',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
