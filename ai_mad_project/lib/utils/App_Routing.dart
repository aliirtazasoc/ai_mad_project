import 'package:get/get.dart';

import '../view/auth/login_screen.dart';
import '../view/auth/signup_screen.dart';
import '../view/auth/splash_screen.dart';
import '../view/auth/welcome_screen.dart';

class AppRoutes {
  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/', page: () =>     SplashScreen()),
    GetPage(name: '/loginScreen', page: ()=>  LoginScreen()),
    GetPage(name: '/SignUpScreen', page: () =>  SignupScreen()),
    GetPage(name: '/welcomeScreen', page: () =>  WelcomeScreen()),
  ];
}
