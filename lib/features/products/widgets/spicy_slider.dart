import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;
  @override
  Widget build(BuildContext context) {
    return Slider(
      inactiveColor: Colors.grey.shade300,
      activeColor: AppColors.primaryColor,
      padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
      value: value,
      onChanged: onChanged,
      min: 0,
      max: 1,
    );
  }
}
