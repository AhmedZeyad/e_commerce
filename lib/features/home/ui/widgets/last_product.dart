import 'package:e_commerce/core/theme/colors.dart';
import 'package:e_commerce/core/theme/text_style.dart';
import 'package:flutter/material.dart';

import '../../data/model/lastproduct.dart';
import '../../data/repo/last_prodect_data.dart';
import 'product_color.dart';

class LastProductCard extends StatelessWidget {
  const LastProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7, // Adjusted for better card proportions
        crossAxisCount: 2,
        mainAxisSpacing: 16, // Add vertical spacing between cards
        crossAxisSpacing: 16, // Add horizontal spacing between cards
      ),
      itemBuilder: (context, index) =>
          ProductCard(product: lastProducts[index]),
      itemCount: lastProducts.length,
    );
  }
}

class ProductCard extends StatelessWidget {
  final LastProduct product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
    
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(product.image),
            ),
          ),
        ),
        Stack(
          
          alignment: Alignment.centerLeft, children: [
          ...List.generate(
            product.colors.length,
            (index) =>
                ProductColors(
              index: index,
              color: product.colors[index],
            ),
          ),
        ]),
        Text(
          product.name,
          style: MyTextStyle.font16RegularWhite,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "\$${product.price}",
          style: MyTextStyle.font14SemiBoldWhite,
        ),
        if (product.oldPrice != null)
          Text(
            "\$${product.oldPrice}",
            style: MyTextStyle.font14RegularGreyD.copyWith(
              decoration: TextDecoration.lineThrough,
              decorationColor: MyColors.greyD_150,
            ),
          ),
      ],
    );
  }
}
