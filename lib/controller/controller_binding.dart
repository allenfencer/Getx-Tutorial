import 'package:get/get.dart';
import 'package:state_management/controller/counter_controller.dart';
import 'package:state_management/controller/home_controller.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(CounterController());
  }
}
