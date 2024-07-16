import 'package:filimo/screens/home-screen.dart';
import 'package:get/get.dart';

import '../screens/splash-screen.dart';

class AppRoutes{
  static const String splashscreen='/splash';
  static const String homeScreen='/home';
  static final List<GetPage> getPages=[
    GetPage(name: splashscreen, page: ()=> const SplashScreen()),
    GetPage(name: homeScreen, page: ()=> const HomeScreen())
  ];
}