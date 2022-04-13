import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/student_controller.dart';
import 'package:state_management/model/student_model.dart';

class NameChanger extends StatelessWidget {
  StudentController studentController = Get.put(StudentController());
  // final student = Student(name: 'Dwane Johnson', age: 21).obs;
  NameChanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'My name is ${studentController.student.value.name}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                studentController.changeToUppercase();
              },
              child: Text('Change to some case'),
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
