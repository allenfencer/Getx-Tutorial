import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: []),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc),
        onPressed: () {
          Get.snackbar(
            'Intro to Getx',
            'Going through a tutorial on getx state management',
            barBlur: 2,
            borderRadius: 20,
            isDismissible: true,
            overlayBlur: 5, // blurs the background when the snackbar appears
            shouldIconPulse: true, //setting this to false will remove the icon animation
            backgroundColor: Colors.grey[300],
            messageText: Text('You can add in more content here😜 '),
            dismissDirection: DismissDirection.horizontal,
            forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
            icon: Icon(Icons.ac_unit_sharp),
            duration: Duration(seconds: 3),
            colorText: Colors.blueGrey[800],
          );
        },
      ),
    );
  }
}
