import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.amber,
          height: 60,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text('Show me some Bottom Sheets'),
          onPressed: () {
            Get.bottomSheet(
              Wrap(
                children: [
                  ListTile(
                    tileColor: Colors.amber,
                    textColor: Colors.white,
                    leading: Icon(Icons.sunny),
                    title: Text('Light Theme',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    onTap: () {Get.changeTheme(ThemeData.light());},
                  ),
                  ListTile(
                    tileColor: Colors.grey[800],
                    textColor: Colors.white,
                    leading: Icon(Icons.nightlight,color: Colors.white,),
                    title: Text('Dark Theme',style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    onTap: () {Get.changeTheme(ThemeData.dark());}, 
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
