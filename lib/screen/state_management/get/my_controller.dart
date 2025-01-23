
import 'package:get/get.dart';

class MyController extends GetxController {

  /// MyController를 Get package에서 불러올 수 있는 함수
  static MyController get to => Get.find<MyController>();

  static void setController() {
    /// Get package 안에 MyController가 등록됐는지 확인
    if(!Get.isRegistered<MyController>()) {
      /// Get package에 MyController 추가
      Get.put(MyController(), permanent: true);
    }
  }

  RxInt count = 0.obs;

  void countUp() {
    count.value ++;
  }
}