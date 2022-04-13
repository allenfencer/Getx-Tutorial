import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EmailSaver extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  var storage = GetStorage();
  EmailSaver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextField(
                controller: emailController,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                if (GetUtils.isEmail(emailController.text)) {
                  storage.write('Email', emailController.text);
                  Get.snackbar('Updated', 'Email Saved successfully');
                } else {
                  Get.snackbar('Invalid  Email',
                      'Cannot save the data because its in invalid format',
                      barBlur: 0.8);
                }
              },
              child: Text('Save to storage'),
              style: ElevatedButton.styleFrom(
                onSurface: Colors.purple,
                minimumSize: Size(100, 50),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('Retrieve Successful',
                    'Your email id is: ${storage.read('Email')}',
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Text('Read from storage'),
              style: ElevatedButton.styleFrom(
                onSurface: Colors.green,
                minimumSize: Size(100, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
