import 'package:flutter/material.dart';

import '../../data/model/card.dart';
import 'card.dart';
import 'dote.dart';

class OffersCard extends StatefulWidget {
  final List<CardModel> cards;
  const OffersCard({super.key, required this.cards});

  @override
  State<OffersCard> createState() => _OffersCardState();
}

int currentCard = 0;

class _OffersCardState extends State<OffersCard> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 400,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentCard = index; // Update the current card index
              });
            },
            itemCount:widget.cards.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, nweIndex) =>
                MyCard(cardModel: widget.cards[nweIndex]),
          ),
          Dote(
            currentCard: currentCard,
            totalCards: widget.cards.length,
          ),
        ],
      ),
    );
  }
}
