import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for food',
          prefixIcon: Icon(CupertinoIcons.search),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
