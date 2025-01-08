import 'package:flutter/material.dart';
class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/quickmart.png",
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
          Container(
            
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 32,
            width: 32,
            decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("assets/images/azlogo.png")),
              borderRadius: BorderRadius.circular(8),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
           
          )
        ],
      ),
    );
  }
}
