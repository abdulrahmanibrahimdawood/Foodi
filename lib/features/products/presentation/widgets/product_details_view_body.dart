import 'package:flutter/material.dart';
import 'package:foodi_app/core/constants/assets.dart';
import 'package:foodi_app/core/constants/constants.dart';
import 'package:foodi_app/core/utils/widgets/custom_sliver_appbar.dart';
import 'package:foodi_app/core/utils/widgets/custom_text.dart';
import 'package:foodi_app/features/products/data/models/addations_model.dart';
import 'package:foodi_app/features/products/presentation/widgets/addations_card.dart';
import 'package:foodi_app/features/products/presentation/widgets/custom_button.dart';
import 'package:foodi_app/features/products/presentation/widgets/spicy_slider.dart';

class ProductDetailsViewBody extends StatefulWidget {
  const ProductDetailsViewBody({super.key});

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {
  double value = .3;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'Sandwich Details'),

        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: kVerticalPadding,
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Assets.imagesSandawitchDetails),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Customize',
                                style: TextStyle(
                                  color: Color(0xFF3C2F2F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    ' Your Burger to Your Tastes. Ultimate Experience',
                                style: TextStyle(
                                  color: Color(0xFF3C2F2F),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        SpicySlider(
                          onChanged: (v) {
                            setState(() {
                              value = v;
                            });
                          },
                          value: value,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Cold'), Text('Spicy')],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              const CustomText(
                text: 'Toppings',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 16),

              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => AddationsCard(
                    addationsModel: AddationsModel(
                      title: 'Tomato',
                      image: Assets.imagesTomato,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const CustomText(
                text: 'Side options',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 16),

              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => AddationsCard(
                    addationsModel: AddationsModel(
                      title: 'Tomato',
                      image: Assets.imagesTomato,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Total',
                        color: const Color(0xFF3C2F2F),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(height: 4),
                      CustomText(
                        text: '\$18.19',
                        color: const Color(0xFF3C2F2F),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  CustomButton(text: 'Add To Cart', onTap: () {}),
                ],
              ),
              const SizedBox(height: 16),
            ]),
          ),
        ),
      ],
    );
  }
}
