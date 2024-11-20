import 'package:flutter/material.dart';
Widget myTestButton(
    {AlignmentGeometry alignment = Alignment.center,
    required String text,
    required VoidCallback onPressed,
    required TextStyle style}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 2),
    child: Align(
      alignment: alignment,
      child: GestureDetector(
        onTap: 
          onPressed,
        child: Text(
          text,
          style: style,
        ),
      ),
    ),
  );
}

