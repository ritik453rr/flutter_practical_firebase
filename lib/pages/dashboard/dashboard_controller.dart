import 'package:get/get.dart';

class DashboardController extends GetxController {
  var currentIndex = 0.obs;
  void changePage(int index) {
    currentIndex.value = index;
  }
}
