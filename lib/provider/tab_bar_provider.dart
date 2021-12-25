
import 'package:flutter/foundation.dart';

class TabBarProvider extends ChangeNotifier{
  int index = 0;

  void changeTab(int activeTab) {
    index = activeTab;
    notifyListeners();
  }
}