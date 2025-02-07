import 'package:flutter/material.dart';

class CardModel {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;
  final String badge;

  CardModel(
      {required this.title,
      required this.subtitle,
      required this.image,
      required this.onTap,
      required this.badge});
}

