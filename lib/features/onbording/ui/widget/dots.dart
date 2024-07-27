import 'package:flutter/material.dart';
class DotsOnbording extends StatelessWidget {
  Color color;
   DotsOnbording({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration:
     const Duration(milliseconds: 500),
    height: 6,
    width: 6,
    margin: const EdgeInsets.all(4),
    // color: Color(0xff21D4B4),
    decoration: BoxDecoration(  
        // color: Color(0xffC0C0C0),
        color: color,
borderRadius: BorderRadius.circular(12)),
    );
  }
}