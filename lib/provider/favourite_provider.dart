import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  bool _isLike = true;

  void onLikeButtonPressed() {
    _isLike = !_isLike;
    notifyListeners();
  }

  bool get isLike => _isLike;
}
