import 'package:cots_app/login/views/login_view.dart';
import 'package:cots_app/main/views/main_view.dart';
import 'package:get/get.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../login/views/login_view.dart';
import '../main/views/main_view.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: '/', page: () => const OnboardingView()),
    GetPage(name: '/login', page: () => LoginView()),
    GetPage(name: '/main', page: () => const MainView()),
  ];
}
