import 'package:flower_guide/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyAppBarTheme {
  static const AppBarTheme _appBarTheme = AppBarTheme(
    color: Colors.transparent,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    iconTheme: IconThemeData(color: MyColors.dark),
  );

  static AppBarTheme get theme => _appBarTheme;
}
