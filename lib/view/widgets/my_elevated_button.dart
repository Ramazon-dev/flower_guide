import 'package:flower_guide/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color color;
  final double radius;
  final double textSize;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.color = MyColors.primary,
    this.radius = 24.0,
    this.textSize = 11.99,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label, style: TextStyle(
        fontSize: getUniqueW(textSize),
        fontWeight: FontWeight.w600,
      ),),
      style: ElevatedButton.styleFrom(
        primary: color,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getUniqueW(radius)),
        )
      ),
    );
  }
}
