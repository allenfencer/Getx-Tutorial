import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'First Screen',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[800]),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () {
                  //Navigates to a new screen using named parameters
                  Get.toNamed('/secondScreen',
                      // To pass arguments from one screen to the other
                      arguments: 'Data from first screen');

                  //Navigates to a new screen but cannot navigate back
                  //Get.offNamed(SecondScreen());

                  //Navigates to a new screen cancelling all the previously saved routes
                  //Get.offAllNamed(SecondScreen());

                  //In addition to all this we can also pass parameters in this format
                  // Get.toNamed('/secondScreen?name=Allen Fencer&age=21');
                },
                color: Colors.amber,
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('Take me to second Screen'),
              ),
            ]),
      ),
    );
  }
}
