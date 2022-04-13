import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter++;
  }

  void reset() {
    counter.value = 0;
    update();
  }
}
