import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manage_getx/CounterController.dart';
import 'package:state_manage_getx/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter = 0.obs;
  final controller = Get.put(CounterController());

  void _incrementCounter() {
    _counter++;
    controller.increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Obx(
                  () => Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            GetBuilder<CounterController>(builder: (_) => Text(
              'Non-Reactive Age : ${controller.age}',
              style: Theme.of(context).textTheme.headlineMedium,
            )),
            GetX<CounterController>(builder: (_) => Text(
              'Reactive Age : ${controller.age}',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            )),
            ElevatedButton(onPressed: () {
              Get.to(SecondPage());
            }, child: Text("Next Page"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
