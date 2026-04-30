import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/cart/presentation/widgets/change_count_order_container.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.onAdd,
    required this.onMinus,
    required this.count,
    required this.onRemove,
    required this.title,
    required this.desc,
    required this.image,
  });
  final String title, desc, image;
  final VoidCallback onAdd;
  final VoidCallback onMinus;
  final VoidCallback onRemove;
  final int count;

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(image),
              CustomText(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              CustomText(text: desc, fontSize: 14),
            ],
          ),

          Column(
            children: [
              Row(
                children: [
                  ChangeCountOrderContainer(
                    onPressed: onMinus,
                    icon: const Icon(Icons.remove, color: Colors.white),
                  ),
                  const SizedBox(width: 16),

                  CustomText(
                    text: '$count',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),

                  const SizedBox(width: 16),
                  ChangeCountOrderContainer(
                    onPressed: onAdd,
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              GestureDetector(
                onTap: onRemove,
                child: Container(
                  width: 154,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF07421C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Center(
                    child: CustomText(
                      text: 'Remove',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
