import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manage_getx/CounterController.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Age is ${controller.age}"),),
    );
  }
}
