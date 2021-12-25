
import 'package:flutter/foundation.dart';

class PlantCardProvider extends ChangeNotifier{
  bool isFavourite = false;
  String turNomi = 'Tur nomi';
  String toifaNomi = 'Toifa nomi';
  String gulNomi = 'Gul nomi';

  void changeFavourite(bool checkFavourite){
    isFavourite = checkFavourite;
    //print(checkFavourite);
    notifyListeners();
  }
}