import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_sliver_appbar.dart';
import 'package:foodi_app/features/cart/presentation/widgets/cart_item.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'Cart'),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: kVerticalPadding,
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: List.generate(
                  4,
                  (context) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CartItem(
                      title: 'Sandwich',
                      desc: 'Veggie Burger',
                      image: Assets.imagesCartItem,
                      count: count,
                      onAdd: () {
                        setState(() {
                          count++;
                        });
                      },
                      onMinus: () {
                        setState(() {
                          if (count > 1) count--;
                        });
                      },
                      onRemove: () {
                        setState(() {
                          count = 0;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ]),
          ),
        ),
      ],
    );
  }
}
