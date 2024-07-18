import 'package:flutter/material.dart';

Widget myTestButton(
    {AlignmentGeometry alignment = Alignment.center,
    required String text,
    required VoidCallback onPressed,
    required TextStyle syle}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: Align(
      alignment: alignment,
      child: TextButton(
        onPressed: 
          onPressed,
        child: Text(
          text,
          style: syle,
        ),
      ),
    ),
  );
}

