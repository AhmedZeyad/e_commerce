import 'package:e_commerce/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  const HomeScreen(),
  const Center(child: Text("Category")),
  const Center(child: Text("Cart")),
  const Center(child: Text("Favorite")),
  const Center(child: Text("Profile")),
];