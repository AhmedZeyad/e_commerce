
import 'package:flutter/material.dart';

import '../../data/repo/categoty_data.dart';
import 'categor_card.dart';
import 'section_header.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        const SectionHeader(title: "Categories", buttonText: "SEE ALl"),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              categories.length ~/ 2 - 1,
              (generator) {
                return CategoryCard(
                  category: categories[generator],
                );
              },
            ))
      ],
    );
  }
}

