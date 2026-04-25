import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';

class CustomTextFormFeild extends StatefulWidget {
  const CustomTextFormFeild({
    super.key,
    this.obscureText = false,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
  });

  final bool obscureText;
  final String hintText;
  final Widget? prefixIcon;
  final TextEditingController controller;

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText;
  }

  void toggleObscureText() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isObscure,
      cursorColor: AppColors.primaryColor,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your ${widget.hintText}';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  toggleObscureText();
                },
                icon: Icon(
                  _isObscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                ),
              )
            : null,
        prefixIcon: widget.prefixIcon,
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: outlineInputBorder(),
        border: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
