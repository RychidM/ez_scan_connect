import 'package:get/get.dart';

class OrderController extends GetxController {
  //TODO: Implement OrderController

  final count = 0.obs;
  @override
  void onInit() {
    print("order controller onInit");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
