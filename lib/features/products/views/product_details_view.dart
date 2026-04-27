import 'package:flutter/material.dart';
import 'package:foodi_app/features/products/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProductDetailsViewBody());
  }
}
