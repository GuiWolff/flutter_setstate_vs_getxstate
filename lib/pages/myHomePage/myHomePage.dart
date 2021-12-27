
import 'package:flutter/material.dart';
import 'package:flutter_setstate_vs_getxstate/pages/myHomePage/myHomePageController.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<MyHomePageController>{
  MyHomePage(this. title, {Key? key}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    Get.put(MyHomePageController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              ()=> Text(
                '${controller.contador}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.somaUmaUnidade(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
