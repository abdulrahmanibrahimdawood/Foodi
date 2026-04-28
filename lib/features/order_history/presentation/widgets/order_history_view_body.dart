import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_sliver_appbar.dart';
import 'package:foodi_app/features/order_history/presentation/views/order_history_item.dart';

class OrderHistoryViewBody extends StatelessWidget {
  const OrderHistoryViewBody({super.key});

  Null get quantities => null;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'Order History'),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: kVerticalPadding,
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: OrderHistoryItem(),
              );
            }, childCount: 4),
          ),
        ),
      ],
    );
  }
}
