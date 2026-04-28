import 'package:flutter/material.dart';
import 'package:foodi_app/features/order_history/presentation/widgets/order_history_view_body.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OrderHistoryViewBody());
  }
}
