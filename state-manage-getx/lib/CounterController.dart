
import 'package:get/get.dart';

class CounterController extends GetxController {
  // var age = 20;
  var age = 20.obs;
  void increment() {
    age++;
    // update();
  }
}