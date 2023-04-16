import 'package:flutter/widgets.dart';

class UserDataProvider extends ChangeNotifier{
   String name = '';
   String email = '';
   String number = '';
  void uernameInfo(String na, String em, String numb) {
    name = na;
    email = em;
    number = numb;
    notifyListeners();

  }
}