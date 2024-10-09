import 'package:get/get.dart';

class BasePageController extends GetxController{
  RxInt pageIndex = 0.obs;

  // Method to update the current index
  void updateIndex(int index) {
    pageIndex.value = index;
  }

}