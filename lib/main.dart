
import 'package:filimo/services/app-bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controlers/app-routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('fa','IR'),
      fallbackLocale: const Locale('en','US'),
      debugShowCheckedModeBanner: false,
      title: 'FILimo test',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff262626),
        brightness: Brightness.dark,
      ),
       defaultTransition: Transition.fade,
       initialRoute:AppRoutes.homeScreen ,
       getPages:AppRoutes.getPages,
       initialBinding:AppBinding() ,

    );
  }
}

