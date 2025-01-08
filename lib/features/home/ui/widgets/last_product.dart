import 'package:e_commerce/core/helper/size_helper.dart';
import 'package:e_commerce/core/theme/colors.dart';
import 'package:e_commerce/core/theme/text_style.dart';
import 'package:e_commerce/features/home/ui/widgets/section_header.dart';
import 'package:flutter/material.dart';

import '../../data/model/lastproduct.dart';
import '../../data/repo/last_prodect_data.dart';

class LastProductCard extends StatelessWidget {
  const LastProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        const SectionHeader(title: "List Product", buttonText: "SEE ALL"),
        Container(
            // color: MyColors.grey_100,
            height: height * 0.45,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7, // Adjusted for better card proportions
                crossAxisCount: 2,
                mainAxisSpacing: 16, // Add vertical spacing between cards
                crossAxisSpacing: 16, // Add horizontal spacing between cards
              ),
              itemBuilder: (context, index) =>
                  ProductCard(product: lastProducts[index]),
              itemCount: lastProducts.length,
            )),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final LastProduct product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Optional: Add card background/border if needed
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Make children use full width
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              image: DecorationImage(
                fit: BoxFit.cover, // Changed to cover for better image scaling
                image: AssetImage(product.image),
              ),
            ),
          ),
          const SizedBox(height: 8), // Consistent spacing
          Row(
            children: List.generate(
              3,
              (index) => Container(
                margin:
                    const EdgeInsets.only(right: 8), // Space between circles
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: MyColors.brown,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            product.name,
            style: MyTextStyle.font16RegularWhite,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
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
      ),
    );
  }
}
