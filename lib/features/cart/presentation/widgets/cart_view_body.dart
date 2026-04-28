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
  final int itemCount = 20;
  late List<int> quantities;
  @override
  void initState() {
    quantities = List.generate(itemCount, (index) => 1);
    super.initState();
  }

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
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CartItem(
                  title: 'Sandwich',
                  desc: 'Veggie Burger',
                  image: Assets.imagesCartItem,
                  count: quantities[index],

                  onAdd: () {
                    setState(() {
                      quantities[index]++;
                    });
                  },

                  onMinus: () {
                    setState(() {
                      if (quantities[index] > 1) {
                        quantities[index]--;
                      }
                    });
                  },

                  onRemove: () {
                    setState(() {
                      quantities.removeAt(index);
                    });
                  },
                ),
              );
            }, childCount: quantities.length),
          ),
        ),
      ],
    );
  }
}
