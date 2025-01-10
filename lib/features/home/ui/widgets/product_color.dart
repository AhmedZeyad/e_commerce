import 'package:flutter/material.dart';

class ProductColors extends StatelessWidget {
  final int index;
  final Color color;
  const ProductColors({
    required this.index,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
    index == 0?ColorCircular(color: color,withBorder: true,):
     Positioned(
      left: index * 13,
      child: ColorCircular(color: color),
    );
  }
}

class ColorCircular extends StatelessWidget {
  const ColorCircular({
    super.key,
    required this.color,
    this.withBorder = false,
  });

  final Color color;
  final bool withBorder ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: 24,
      height: 24,
      decoration:  BoxDecoration(
        border:withBorder? Border.all(color: Colors.blue,width: 2):null,
        color:color, // Teal fill
        shape: BoxShape.circle,
      ),
    );
  }
}

