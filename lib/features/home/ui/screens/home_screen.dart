import 'package:e_commerce/features/home/data/repo/card_data.dart';
import 'package:e_commerce/features/home/ui/widgets/last_product.dart';
import 'package:flutter/material.dart';

import '../widgets/app_header.dart';
import '../widgets/categories.dart';
import '../widgets/offers_card.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
    @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const AppHeader(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              OffersCard(cards: cards),
              const Categories(),
              const SectionHeader(title: "List Product", buttonText: "SEE ALL"),
            ],
          ),
        ),
        const LastProductCard(),
      ],
    );
  }


}

//