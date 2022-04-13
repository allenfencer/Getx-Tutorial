import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/counter_controller.dart';
import 'package:state_management/controller/home_controller.dart';
import 'package:state_management/screens/second_screen.dart';

class SecondCounter extends StatelessWidget {
  const SecondCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.yellow,
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
                  Get.find<HomeController>().count.toString(),
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
                  Get.find<HomeController>().increment();
                },
                child: Icon(
                  Icons.add,
                  size: 25,
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
  }
}
