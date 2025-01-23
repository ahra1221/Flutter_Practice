
import 'package:flutter/cupertino.dart';

class CounterModel with ChangeNotifier {

  int count = 0;

  void countUp() {
    count++;

    /// Listener에게 현재 ChangeNotifier에 있는 변수 값이 변경됐음을 공지
    notifyListeners();
  }
}