import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onTapped=false;
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Get.defaultDialog(
              backgroundColor: Colors.grey[200],
              radius: 10,
              title: '100% Productive',
              titleStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey[900]),
              contentPadding: EdgeInsets.all(25),
              titlePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              middleText: 'Your order has been placed successfully',
              middleTextStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              content: Image.network(
                  'https://img.freepik.com/free-vector/men-success-laptop-relieve-work-from-home-computer-great_10045-646.jpg?t=st=1648051369~exp=1648051969~hmac=fa82253c35642c4a60ad918f2f593bb50df89bb918795302ef004c578f654a63&w=740'),
              textConfirm: 'Rate Us',
              confirmTextColor: Colors.white,
              buttonColor: Colors.amber,
              actions: [
                ElevatedButton(onPressed: () {}, child: Text('Action1')),
                ElevatedButton(onPressed: () {}, child: Text('Action2'))
              ],
            );
          },
          color: Colors.amber,
          height: 60,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text('Show me some Dialogue Boxes'),
        ),
      ),
    );
  }
}
