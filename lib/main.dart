// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:state_management/certificates.dart';
import 'package:state_management/controller/controller_binding.dart';
import 'package:state_management/controller/counter_controller.dart';
import 'package:state_management/controller/home_controller.dart';
import 'package:state_management/model/makeup_model.dart';
import 'package:state_management/screens/email_saver.dart';
import 'package:state_management/screens/first_screen.dart';
import 'package:state_management/screens/get_view_demo.dart';
import 'package:state_management/screens/name_changer.dart';
import 'package:state_management/screens/product_page.dart';
import 'package:state_management/screens/second_counter.dart';
import 'package:state_management/screens/second_screen.dart';
import 'package:state_management/screens/simple_counter.dart';

void main() async {
  ControllerBinding().dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  // HttpOverrides.global = MyHttpOverrides();
  await GetStorage().initStorage;
  runApp(
    GetMaterialApp(
      //initialBinding: ControllerBinding(),
      // defaultTransition: Transition.leftToRight,
      initialRoute: '/getViewCounter',
      getPages: [
        GetPage(
          name: '/',
          page: () => FirstScreen(),
        ),
        GetPage(
            name: '/secondScreen',
            page: () => SecondScreen(),
            transition: Transition.leftToRight),
        GetPage(
          name: '/counter',
          page: () => SimpleCounter(),
          transition: Transition.leftToRight,
          binding: BindingsBuilder(
            () => {Get.lazyPut<HomeController>(() => HomeController())},
          ),
        ),
        GetPage(
          name: '/nameChanger',
          page: () => NameChanger(),
        ),
        GetPage(
            name: '/second_counter',
            page: () => SecondCounter(),
            binding: BindingsBuilder(() =>
                {Get.lazyPut<CounterController>(() => CounterController())})),
        GetPage(
          name: '/productPage',
          page: () => ProductPage(),
        ),
        GetPage(
          name: '/emailSaver',
          page: () => EmailSaver(),
        ),
        GetPage(
          name: '/getViewCounter',
          page: () => CounterUsingGetView(),
        )
      ],
    ),
  );
}
