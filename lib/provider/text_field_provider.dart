import 'package:flutter/material.dart';

class TextFieldProvider extends ChangeNotifier {
  String? value;

  TextEditingController textController = TextEditingController();

  // PASSWORD UCHUN
  bool isVisible = false;
  Icon eye = const Icon(Icons.remove_red_eye_outlined);

  void changValue(String v) {
    // ignore: avoid_print
    print(textController.text);
    notifyListeners();
  }

  void changeVisible(v) {
    isVisible = v;
    print(v);
    eye = v
        ? const Icon(Icons.remove_red_eye_sharp)
        : const Icon(Icons.remove_red_eye_outlined);
    notifyListeners();
  }
}
