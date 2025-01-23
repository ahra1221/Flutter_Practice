import 'package:flutter/widgets.dart';

class NotifierViewModel with ChangeNotifier {

  /// static instance -> 동일한 class 호출됨
  static final NotifierViewModel instance = NotifierViewModel();

  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }
}