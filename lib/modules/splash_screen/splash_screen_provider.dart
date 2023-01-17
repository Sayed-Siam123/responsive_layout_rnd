import 'package:flutter/material.dart';

class SplashScreenProvider extends ChangeNotifier{
  int counterValue = 0;
  get counter => counterValue;

  increment(){
    counterValue++;
    notifyListeners();
  }

  decrement(){
    counterValue--;
    notifyListeners();
  }

}