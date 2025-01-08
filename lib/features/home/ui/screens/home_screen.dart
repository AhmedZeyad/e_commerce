import 'package:e_commerce/features/home/data/repo/card_data.dart';
import 'package:e_commerce/features/home/ui/widgets/last_product.dart';
import 'package:flutter/material.dart';

import '../widgets/app_header.dart';
import '../widgets/categories.dart';
import '../widgets/offers_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.all(16),
      child: Column(
        spacing: 10,
        children: [
          const AppHeader(),
          OffersCard(cards: cards),
          // const Center(
          //   child: Text('Home Screen',
          //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),

          // ),
          const Categories(),
           LastProductCard()
        ],
      ),
    ));
  }
}




//  done complete app header
//  done starting in offers card  is done 70%
//  done  card model and data is done
//  done dote
//  done  offers card 