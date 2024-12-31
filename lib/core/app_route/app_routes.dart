import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../presentations/screens/onboarding/onboard_screen.dart';
import '../../presentations/screens/splash/splash_screen.dart';


class AppRoutes {
  static String splashScreen = "/splash_screen";
  static String onboardScreen = "/OnboardScreen";



  static List<GetPage> page = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onboardScreen, page: () =>  OnboardScreen()),
  ];

}