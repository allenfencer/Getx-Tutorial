import 'package:get/get.dart';
import 'package:state_management/model/student_model.dart';

class StudentController extends GetxController {
  var student = Student(name: 'Allen Fencer', age: 21).obs;

  void changeToUppercase() {
    student.update((student) {
      if (student!.name == student.name!.toUpperCase()) {
        student.name = student.name!.toLowerCase();
      } else if (student.name == student.name!.toLowerCase()) {
        student.name = student.name!.toUpperCase();
      } else {
        student.name = student.name!.toLowerCase();
      }
    });
  }
}
