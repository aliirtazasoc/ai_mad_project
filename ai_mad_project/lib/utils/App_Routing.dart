import 'package:get/get.dart';

import '../view/add_plan_screen/add_plan_screen.dart';
import '../view/auth/login_screen.dart';
import '../view/auth/signup_screen.dart';
import '../view/auth/splash_screen.dart';
import '../view/auth/welcome_screen.dart';
import '../view/bottom_nav_bar/bottom_nav_bar.dart';
import '../view/home_screen/home_screen.dart';

class AppRoutes {
  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/loginScreen', page: () => LoginScreen()),
    GetPage(name: '/SignUpScreen', page: () => SignupScreen()),
    GetPage(name: '/welcomeScreen', page: () => WelcomeScreen()),
    GetPage(name: '/bottomNavBar', page: () => BottomNavBar()),
    GetPage(name: '/addPlanScreen', page: () => AddPlanScreen()),
    GetPage(name: '/homeScreen', page: () => HomeScreen()),
  ];
}

class SignupLoginScreenScreen {}
