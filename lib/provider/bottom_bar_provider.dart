import 'package:flutter/foundation.dart';

class BottomBarProvider extends ChangeNotifier {
  int index = 0;

  void changeIndex(int i) {
    index = i;
    notifyListeners();
  }
}
