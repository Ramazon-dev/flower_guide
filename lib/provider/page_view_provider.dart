
import 'package:flutter/material.dart';

class PageViewProvider extends ChangeNotifier {
  final PageController _pageController = PageController();

  PageController get pageController => _pageController;
}