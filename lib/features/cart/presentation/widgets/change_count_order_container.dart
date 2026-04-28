import 'package:flutter/material.dart';

class ChangeCountOrderContainer extends StatelessWidget {
  const ChangeCountOrderContainer({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final Widget icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      decoration: ShapeDecoration(
        color: const Color(0xFF07421C),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Center(
        child: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
