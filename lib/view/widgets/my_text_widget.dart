import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class MyTextWidget extends StatelessWidget {
  String data;
  Color color;
  double size;
  FontWeight weight;
  int? maxLines;

  MyTextWidget(
    this.data, {
    Key? key,
    this.color = MyColors.text,
    this.size = 14.0,
    this.weight = FontWeight.w400,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: getUniqueW(size),
        color: color,
        fontWeight: weight,
      
      ),
    );
  }
}
