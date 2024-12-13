import 'package:get/get.dart';

import '../view/outh/login_screen.dart';
import '../view/outh/signup_screen.dart';
import '../view/outh/welcome_screen.dart';

class AppRoutes {
  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/', page: () =>   WelcomeScreen()),
    GetPage(name: '/loginScreen', page: ()=>  LoginScreen()),
    GetPage(name: '/SignUpScreen', page: () =>  SignupScreen()),
    // GetPage(name: '/signUp', page: () =>  SignupView()),
    // GetPage(name: "/mainBottomBar", page: () => MainBottomBar()),
    // // GetPage(name: '/dashboard', page: () => const MainBottomBar()),
    // GetPage(name: '/venuStoriesPage', page: () => const VenuStoriesPage()),
    // GetPage(name: "/termAndCondition", page: () => TermsAndConditionsScreen()),
    // GetPage(name: '/otp', page: () => OtpScreen()),
    // GetPage(name: '/setPassword', page: () =>  SetPasswordScreen()),
    // GetPage(name: '/myTypeScreen', page: () => MyTypeScreen()),
    // GetPage(name: '/myInterestScreen', page: () => MyInterestScreen()),
    // GetPage(name: '/myTypeScreen', page: () => MyTypeScreen()),
    // GetPage(name: "/addFriends", page: () => AddFriends()),
    // GetPage(name: "/setLocation", page: () => SetLocation()),
    // GetPage(name: "/theEclipseClub", page: () => TheEclipseClub()),
    // GetPage(name: "/addFriendRequestScreen", page: () => AddFriendRequestScreen()),
    // GetPage(name: "/chatConversationScreen", page: () => ChatConversationScreen()),
    // GetPage(name: "/profileScreen", page: () => ProfileScreen()),
    // GetPage(name: "/createNewGroup", page: () => CreateNewGroup()),
    // GetPage(name: "/bookAnEvent", page: () => BookAnEvent()),
    // GetPage(name: "/grandArmMoreDetail", page: () => GrandArmMoreDetail()),
    //   GetPage(name: "/ticketConfirmation", page: () => TicketConfirmation()),
    // GetPage(name: "/ticketTicket", page: () => TransferTicket()),
    // GetPage(name: "/solo", page: () => SoloScreen()),
  ];
}
