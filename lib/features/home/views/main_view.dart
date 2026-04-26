import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/app_colors.dart';
import 'package:foodi_app/features/auth/views/profile_view.dart';
import 'package:foodi_app/features/cart/views/cart_view.dart';
import 'package:foodi_app/features/home/views/home_view.dart';
import 'package:foodi_app/features/order_history/views/order_history_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController controller;
  late List<Widget> screens;
  int currentScreen = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentScreen);
    screens = [
      const HomeView(),
      const CartView(),
      const OrderHistoryView(),
      const ProfileView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: controller, children: screens),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        padding: const EdgeInsets.only(top: 12),
        child: BottomNavigationBar(
          currentIndex: currentScreen,
          elevation: 0,
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant_sharp),
              label: "Order History",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              currentScreen = index;
            });
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
    );
  }
}
