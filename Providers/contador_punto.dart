import 'package:flutter/material.dart';


class counterprovider with ChangeNotifier{
  int _counter1=0;
  int _counter2=0;
  final int _counter3 =25;
  final int _counter4 =25;
  
  int get counter1=> _counter1;
  int get counter2 => _counter2;
  int get counter3 =>_counter3 - _counter1;
  int get counter4 =>_counter4 - _counter2;


  void increment1(){
    _counter1++;
    notifyListeners();
  }

  void refresh(){
    _counter1= 0;
    _counter2=0;
    notifyListeners();
  }
  void increment2(){
    _counter2++;
    notifyListeners();
  }

  void decrement2(){
    _counter1--;
    notifyListeners();
  }
  void decrement1(){
    _counter2--;
    notifyListeners();
  }
  

}