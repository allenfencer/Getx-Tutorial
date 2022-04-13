import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/counter_controller.dart';

//Using 'GetWidget' to update the text widget while using Get.create()
class CounterUsingGetView extends GetWidget<CounterController> {
  const CounterUsingGetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.create() creates multiple instance everytime, so the text widget does not get updated
    //So inorder to overcome that while using Get.create() we can extend GetWidget instead of stateless widget
    Get.create(()=>CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text('GetView Demo'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The counter value is',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            Obx(
              () => Text(
                '${controller.counter}',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Icon(
                Icons.add,
                size: 25,
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
